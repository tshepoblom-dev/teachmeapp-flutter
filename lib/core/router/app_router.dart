import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/domain/auth_state.dart';
import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/auth/presentation/screens/email_verify_pending_screen.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_consent_screen.dart';
import '../../features/auth/presentation/screens/register_details_screen.dart';
import '../../features/auth/presentation/screens/register_role_screen.dart';
import '../../features/auth/presentation/screens/reset_password_screen.dart';
import '../../features/booking/presentation/screens/booking_create_screen.dart';
import '../../features/booking/presentation/screens/booking_detail_screen.dart';
import '../../features/discover/presentation/screens/tutor_profile_screen.dart';
import '../../features/home/presentation/screens/student_home_shell.dart';
import '../../features/home/presentation/screens/tutor_home_shell.dart';
import '../../features/onboarding/presentation/providers/onboarding_provider.dart';
import '../../features/onboarding/presentation/screens/banned_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/onboarding/presentation/screens/pending_kyc_screen.dart';
import '../../features/onboarding/presentation/screens/suspended_screen.dart';
import '../../features/profile/presentation/screens/edit_profile_screen.dart';
import '../../features/session/presentation/screens/live_session_screen.dart';
import 'route_guards.dart';
import 'route_paths.dart';
import 'splash_screen.dart';

/// Bridges Riverpod's [authProvider]/[authBootstrapProvider] changes into a
/// [Listenable] go_router can watch via `refreshListenable`, so a login,
/// logout, or account-status change re-runs `redirect` without the screen
/// itself needing to navigate manually.
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Ref ref) {
    ref.listen(authProvider, (_, __) => notifyListeners());
    ref.listen(authBootstrapProvider, (_, __) => notifyListeners());
    ref.listen(onboardingProvider, (_, __) => notifyListeners());
    ref.listen(onboardingBootstrapProvider, (_, __) => notifyListeners());
  }
}

final routerProvider = Provider<GoRouter>((ref) {
  final refreshListenable = GoRouterRefreshStream(ref);

  return GoRouter(
    initialLocation: RoutePaths.splash,
    refreshListenable: refreshListenable,
    redirect: (context, state) {
      final location = state.matchedLocation;
      final atSplash = location == RoutePaths.splash;

      if (ref.read(authBootstrapProvider).isLoading || ref.read(onboardingBootstrapProvider).isLoading) {
        return atSplash ? null : RoutePaths.splash;
      }

      final atAuthRoute = RoutePaths.isAuthRoute(location);
      final atOnboarding = location == RoutePaths.onboarding;
      final hasSeenOnboarding = ref.read(onboardingProvider);

      return switch (ref.read(authProvider)) {
        AuthUnauthenticated() || AuthError() => !hasSeenOnboarding
            ? (atOnboarding ? null : RoutePaths.onboarding)
            : (atAuthRoute ? null : RoutePaths.login),
        AuthAuthenticating() => null,
        AuthAccountIssue(code: final code) =>
          accountIssuePath(code) ?? (atAuthRoute || atSplash ? RoutePaths.studentHome : null),
        AuthAuthenticated(user: final user) =>
          (atAuthRoute || atSplash) ? roleHomePath(user.role) : null,
      };
    },
    routes: [
      GoRoute(path: RoutePaths.splash, builder: (_, __) => const SplashScreen()),
      GoRoute(path: RoutePaths.onboarding, builder: (_, __) => const OnboardingScreen()),
      GoRoute(path: RoutePaths.login, builder: (_, __) => const LoginScreen()),
      GoRoute(path: RoutePaths.registerRole, builder: (_, __) => const RegisterRoleScreen()),
      GoRoute(
        path: RoutePaths.registerDetails,
        builder: (_, __) => const RegisterDetailsScreen(),
      ),
      GoRoute(
        path: RoutePaths.registerConsent,
        builder: (_, __) => const RegisterConsentScreen(),
      ),
      GoRoute(
        path: RoutePaths.forgotPassword,
        builder: (_, __) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: RoutePaths.resetPassword,
        builder: (context, state) => ResetPasswordScreen(
          initialEmail: state.uri.queryParameters['email'],
          initialToken: state.uri.queryParameters['token'],
        ),
      ),
      GoRoute(
        path: RoutePaths.emailVerifyPending,
        builder: (_, __) => const EmailVerifyPendingScreen(),
      ),
      GoRoute(path: RoutePaths.suspended, builder: (_, __) => const SuspendedScreen()),
      GoRoute(path: RoutePaths.banned, builder: (_, __) => const BannedScreen()),
      GoRoute(path: RoutePaths.pendingKyc, builder: (_, __) => const PendingKycScreen()),
      GoRoute(path: RoutePaths.studentHome, builder: (_, __) => const StudentHomeShell()),
      GoRoute(path: RoutePaths.tutorHome, builder: (_, __) => const TutorHomeShell()),
      GoRoute(path: RoutePaths.editProfile, builder: (_, __) => const EditProfileScreen()),
      GoRoute(
        path: '/discover/tutors/:tutorId',
        builder: (context, state) => TutorProfileScreen(
          tutorId: int.parse(state.pathParameters['tutorId']!),
        ),
      ),
      GoRoute(
        path: '/bookings/create/:tutorId',
        builder: (context, state) => BookingCreateScreen(
          tutorId: int.parse(state.pathParameters['tutorId']!),
        ),
      ),
      GoRoute(
        path: '/bookings/:bookingId',
        builder: (context, state) => BookingDetailScreen(
          bookingId: int.parse(state.pathParameters['bookingId']!),
        ),
      ),
      GoRoute(
        path: '/sessions/:sessionId',
        builder: (context, state) => LiveSessionScreen(
          sessionId: int.parse(state.pathParameters['sessionId']!),
        ),
      ),
    ],
  );
});
