class RoutePaths {
  const RoutePaths._();

  static const splash = '/splash';
  static const login = '/login';
  static const registerRole = '/register';
  static const registerDetails = '/register/details';
  static const registerConsent = '/register/consent';
  static const forgotPassword = '/forgot-password';
  static const resetPassword = '/reset-password';
  static const emailVerifyPending = '/verify-email';

  static const suspended = '/account/suspended';
  static const banned = '/account/banned';
  static const pendingKyc = '/account/pending-kyc';

  static const studentHome = '/student';
  static const tutorHome = '/tutor';
  static const profile = '/profile';
  static const editProfile = '/profile/edit';

  static const discover = '/discover';
  static String tutorProfile(int tutorId) => '/discover/tutors/$tutorId';
  static String bookingCreate(int tutorId) => '/bookings/create/$tutorId';
  static const bookingList = '/bookings';
  static String bookingDetail(int bookingId) => '/bookings/$bookingId';

  static String liveSession(int sessionId) => '/sessions/$sessionId';

  static const _authRoutes = {
    login,
    registerRole,
    registerDetails,
    registerConsent,
    forgotPassword,
    resetPassword,
  };

  static bool isAuthRoute(String location) => _authRoutes.contains(location);
}
