import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Holds a route path produced by a push-notification tap (foreground,
/// background, or terminated-launch via `getInitialMessage()`) until the
/// router is mounted and able to consume it.
///
/// Modeled on `core/network/auth_session_events.dart`'s "core raises a
/// signal, a higher layer consumes it" shape, but carries a value (the
/// target path) instead of just a counter.
class PendingDeepLinkNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void set(String path) => state = path;

  /// Call right after navigating so the same link can't re-fire on an
  /// unrelated rebuild.
  void consume() => state = null;
}

final pendingDeepLinkProvider =
    NotifierProvider<PendingDeepLinkNotifier, String?>(PendingDeepLinkNotifier.new);
