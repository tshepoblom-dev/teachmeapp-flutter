/// Single Android notification channel for all FCM-originated local
/// notifications shown while the app is foregrounded. The id must match the
/// `com.google.firebase.messaging.default_notification_channel_id`
/// meta-data value declared in `AndroidManifest.xml` (manifest XML can't
/// reference a Dart constant, so keep both literal strings in sync).
class NotificationChannels {
  const NotificationChannels._();

  static const defaultChannelId = 'teachmeapp_default_channel';
  static const defaultChannelName = 'General notifications';
  static const defaultChannelDescription =
      'Booking, session, and account notifications from TeachMeApp';
}
