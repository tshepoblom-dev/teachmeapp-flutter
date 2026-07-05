/// Single source of truth for every confirmed `routes/api.php` path.
///
/// Paths are relative to the API base URL (which already includes `/api`,
/// see [ApiClient]). Grouped by domain to mirror the backend route groups.
/// Phase 1 only consumes the auth/email/user group; later groups are listed
/// now so later phases don't need to re-derive them against the Laravel repo.
class ApiEndpoints {
  const ApiEndpoints._();

  // ─── Auth ───────────────────────────────────────────────────────────────
  static const authRegister = '/auth/register';
  static const authLogin = '/auth/login';
  static const authLogout = '/auth/logout';
  static const authForgotPassword = '/auth/forgot-password';
  static const authResetPassword = '/auth/reset-password';

  // ─── Email verification ─────────────────────────────────────────────────
  static const emailVerifyStatus = '/email/verify/status';
  static const emailVerificationNotification = '/email/verification-notification';

  // ─── User profile ───────────────────────────────────────────────────────
  static const user = '/user';
  static const userProfile = '/user/profile';
  static const userProfileAvatar = '/user/profile/avatar';
  static const userPassword = '/user/password';

  // ─── Tutor availability (Phase 3) ───────────────────────────────────────
  static const tutorAvailability = '/tutor/availability';
  static const tutorAvailabilityBulk = '/tutor/availability/bulk';
  static const tutorAvailabilityReplace = '/tutor/availability/replace';
  static String tutorAvailabilitySlot(int slotId) => '/tutor/availability/$slotId';
  static String tutorAvailabilitySlotToggle(int slotId) => '/tutor/availability/$slotId/toggle';

  // ─── Public availability / discovery (Phase 2) ──────────────────────────
  static String tutorPublicAvailability(int tutorId) => '/tutors/$tutorId/availability';
  static const tutors = '/tutors';
  static String tutorProfile(int tutorId) => '/tutors/$tutorId';
  static String tutorReviews(int tutorId) => '/tutors/$tutorId/reviews';

  // ─── Reference data ──────────────────────────────────────────────────────
  static const institutions = '/institutions';
  static const subjects = '/subjects';

  // ─── Notifications ───────────────────────────────────────────────────────
  static const notifications = '/notifications';
  static String notificationRead(String id) => '/notifications/$id/read';
  static const notificationsReadAll = '/notifications/read-all';

  // ─── FCM ─────────────────────────────────────────────────────────────────
  static const fcmToken = '/fcm-token';

  // ─── Bookings (Phase 2/3) ────────────────────────────────────────────────
  static const bookings = '/bookings';
  static String booking(int id) => '/bookings/$id';
  static const bookingsUpcoming = '/bookings/upcoming/list';
  static const tutorBookingRequests = '/tutor/bookings/requests';
  static String bookingAccept(int id) => '/bookings/$id/accept';
  static String bookingDecline(int id) => '/bookings/$id/decline';
  static String bookingCancel(int id) => '/bookings/$id/cancel';
  static String bookingReview(int id) => '/bookings/$id/review';
  static String bookingSession(int id) => '/bookings/$id/session';

  // ─── Sessions (Phase 4) ──────────────────────────────────────────────────
  static String session(int id) => '/sessions/$id';
  static String sessionJoin(int id) => '/sessions/$id/join';
  static String sessionTokenRefresh(int id) => '/sessions/$id/token/refresh';
  static String sessionKeepalive(int id) => '/sessions/$id/keepalive';
  static String sessionStart(int id) => '/sessions/$id/start';
  static String sessionEnd(int id) => '/sessions/$id/end';
  static String sessionChat(int id) => '/sessions/$id/chat';
  static String sessionChatRead(int id) => '/sessions/$id/chat/read';
  static String sessionChatUnread(int id) => '/sessions/$id/chat/unread';
  static String sessionReport(int id) => '/sessions/$id/report';

  // ─── Wallet & payments (Phase 5) ─────────────────────────────────────────
  static const wallet = '/wallet';
  static const walletTransactions = '/wallet/transactions';
  static const paymentMethods = '/payment/methods';
  static const paymentDeposit = '/payment/deposit';
  static String paymentBooking(int bookingId) => '/payment/booking/$bookingId';
  static String paymentCallback(String gateway) => '/payment/callback/$gateway';
  static const paymentTransactions = '/payment/transactions';

  // ─── Payouts (Phase 5) ───────────────────────────────────────────────────
  static const payoutAccounts = '/payout/accounts';
  static String payoutAccountDefault(int id) => '/payout/accounts/$id/default';
  static String payoutAccount(int id) => '/payout/accounts/$id';
  static const payoutTransactions = '/payout/transactions';
  static const payoutRequest = '/payout/request';
  static String payoutCancel(int id) => '/payout/$id/cancel';

  // ─── KYC (Phase 6) ───────────────────────────────────────────────────────
  static const kycStatus = '/kyc/status';
  static const kycApply = '/kyc/apply';
  static const kycDocuments = '/kyc/documents';
  static String kycDocument(int id) => '/kyc/documents/$id';

  // ─── Tiers ───────────────────────────────────────────────────────────────
  static const tiers = '/tiers';
  static String tier(int id) => '/tiers/$id';
  static const tutorTierProgress = '/tutor/tier/progress';

  // ─── Invoices ────────────────────────────────────────────────────────────
  static String invoice(int id) => '/invoices/$id';

  // ─── Settings (Phase 2+, pending backend companion change) ──────────────
  static const settingsPublic = '/settings/public';
}
