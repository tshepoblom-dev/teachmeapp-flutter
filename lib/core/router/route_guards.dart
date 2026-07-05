import 'route_paths.dart';

String roleHomePath(String role) =>
    role == 'tutor' ? RoutePaths.tutorHome : RoutePaths.studentHome;

/// Maps a `CheckAccountStatus` 403 `code` to its interstitial route.
/// Returns null for an unrecognised code (treated as a non-blocking issue).
String? accountIssuePath(String code) => switch (code) {
      'account_banned' => RoutePaths.banned,
      'account_suspended' => RoutePaths.suspended,
      'pending_kyc' => RoutePaths.pendingKyc,
      _ => null,
    };
