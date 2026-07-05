import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';
part 'app_notification.g.dart';

/// Mirrors `NotificationResource`. `id` is a UUID string (Laravel's
/// database-notifications primary key), not an int. `data` is the
/// notification-class-specific payload — every notification type includes a
/// `message` string and most include either `booking_id` or `session_id` for
/// deep-linking (verified against `app/Notifications/*`).
@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    String? type,
    required Map<String, dynamic> data,
    DateTime? readAt,
    required DateTime createdAt,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}

extension AppNotificationX on AppNotification {
  bool get isUnread => readAt == null;
  String get message => data['message'] as String? ?? type ?? 'Notification';
  int? get bookingId => data['booking_id'] as int?;
  int? get sessionId => data['session_id'] as int?;
}
