import 'dart:convert';
import 'dart:developer' as developer;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

// Deliberate, narrow `core` -> `features` exception: `ApiEndpoints.fcmToken`
// and `NotificationRepository.registerFcmToken`/`clearFcmToken` already
// exist specifically to be called from this push-integration layer, so this
// reuses them rather than duplicating two Dio calls.
import '../../features/notifications/presentation/providers/notification_provider.dart';
import '../router/route_paths.dart';
import 'notification_channels.dart';
import 'pending_deep_link_provider.dart';

/// Owns the full FCM lifecycle: permission, token registration against the
/// backend, foreground local-notification display, and tap-to-deep-link for
/// foreground/background/terminated launch paths.
///
/// Mirrors `core/realtime/`'s role: a core-level service that
/// `features/auth`'s `AuthNotifier` calls into directly
/// (`ref.read(pushNotificationServiceProvider)`), without this file
/// importing anything from `features/auth`.
class PushNotificationService {
  PushNotificationService(this._ref) : _localNotifications = FlutterLocalNotificationsPlugin();

  final Ref _ref;
  final FlutterLocalNotificationsPlugin _localNotifications;
  bool _listenersAttached = false;

  /// Call once, right after the user becomes authenticated (login, register,
  /// or cold-start token hydration). Safe to call again on a later login —
  /// the message-stream subscriptions are only attached once per process.
  Future<void> initializeAndRegister() async {
    // Push setup is best-effort: a transient FCM/permission failure here
    // must never propagate to callers (e.g. AuthNotifier.login), or it gets
    // mistaken for an auth failure and reverts a successful login/hydration.
    try {
      await _ensurePermission();
      await _ensureLocalNotificationsInitialized();

      final token = await FirebaseMessaging.instance.getToken();
      if (token != null) {
        await _registerToken(token);
      }
      FirebaseMessaging.instance.onTokenRefresh.listen(_registerToken);

      if (!_listenersAttached) {
        _listenersAttached = true;
        FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
        FirebaseMessaging.onMessageOpenedApp.listen(_handleOpenedMessage);

        final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
        if (initialMessage != null) {
          _handleOpenedMessage(initialMessage);
        }
      }
    } catch (e) {
      developer.log('Failed to initialize push notifications: $e', name: 'PushNotificationService');
    }
  }

  /// Call from `AuthNotifier.logout()` / `forceLogout()`.
  Future<void> clearRegistration() async {
    try {
      await _ref.read(notificationRepositoryProvider).clearFcmToken();
    } catch (e) {
      developer.log('Failed to clear FCM token server-side: $e', name: 'PushNotificationService');
    }
    await FirebaseMessaging.instance.deleteToken();
  }

  Future<void> _ensurePermission() async {
    // Android 13+ requires this runtime permission in addition to FCM's own
    // prompt; permission_handler is already a dependency (used for Agora
    // camera/mic) so reuse it here for a consistent permission-request UX.
    if (await Permission.notification.isDenied) {
      await Permission.notification.request();
    }

    await FirebaseMessaging.instance.requestPermission(alert: true, badge: true, sound: true);

    // Keep iOS foreground presentation explicit rather than relying on
    // default OS behavior.
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> _ensureLocalNotificationsInitialized() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings();
    await _localNotifications.initialize(
      const InitializationSettings(android: androidSettings, iOS: iosSettings),
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload == null) return;
        _routeIfPossible(jsonDecode(payload) as Map<String, dynamic>);
      },
    );

    const androidChannel = AndroidNotificationChannel(
      NotificationChannels.defaultChannelId,
      NotificationChannels.defaultChannelName,
      description: NotificationChannels.defaultChannelDescription,
      importance: Importance.high,
    );
    await _localNotifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidChannel);
  }

  Future<void> _registerToken(String token) async {
    try {
      await _ref.read(notificationRepositoryProvider).registerFcmToken(token);
    } catch (e) {
      developer.log('Failed to register FCM token: $e', name: 'PushNotificationService');
    }
  }

  void _handleForegroundMessage(RemoteMessage message) {
    final notification = message.notification;
    if (notification == null) return;
    _localNotifications.show(
      message.hashCode,
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          NotificationChannels.defaultChannelId,
          NotificationChannels.defaultChannelName,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      payload: jsonEncode(message.data),
    );
  }

  void _handleOpenedMessage(RemoteMessage message) => _routeIfPossible(message.data);

  void _routeIfPossible(Map<String, dynamic> data) {
    final sessionId = data['session_id'];
    final bookingId = data['booking_id'];
    if (sessionId != null) {
      _ref
          .read(pendingDeepLinkProvider.notifier)
          .set(RoutePaths.liveSession(int.parse(sessionId.toString())));
    } else if (bookingId != null) {
      _ref
          .read(pendingDeepLinkProvider.notifier)
          .set(RoutePaths.bookingDetail(int.parse(bookingId.toString())));
    }
  }
}

final pushNotificationServiceProvider = Provider<PushNotificationService>((ref) {
  return PushNotificationService(ref);
});
