import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/network/auth_session_events.dart';
import '../../../../core/network/dio_provider.dart';
import '../../../../core/push/push_notification_service.dart';
import '../../../../core/realtime/stub_realtime_service.dart';
import '../../../../core/storage/secure_storage_service.dart';
import '../../data/auth_api.dart';
import '../../data/auth_repository.dart';
import '../../domain/auth_state.dart';
import '../../domain/user.dart';

final authApiProvider = Provider<AuthApi>((ref) => AuthApi(ref.watch(dioProvider)));

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    ref.watch(authApiProvider),
    ref.watch(secureStorageServiceProvider),
  );
});

class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() {
    // Core's network layer signals 401s here without importing this feature
    // — see core/network/auth_session_events.dart.
    ref.listen(authSessionEventsProvider, (previous, next) {
      if (previous != null && next != previous) {
        forceLogout();
      }
    });
    return const AuthState.unauthenticated();
  }

  AuthRepository get _repository => ref.read(authRepositoryProvider);

  Future<void> login({required String email, required String password}) async {
    state = const AuthState.authenticating();
    try {
      final user = await _repository.login(email: email, password: password);
      state = AuthState.authenticated(user);
      await _checkAccountStatus();
      if (state is AuthAuthenticated) {
        await ref.read(pushNotificationServiceProvider).initializeAndRegister();
      }
    } catch (error) {
      state = const AuthState.unauthenticated();
      rethrow;
    }
  }

  Future<void> register({
    required String role,
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    String? timezone,
    required bool termsAccepted,
    required bool privacyAccepted,
  }) async {
    state = const AuthState.authenticating();
    try {
      final user = await _repository.register(
        role: role,
        name: name,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
        timezone: timezone,
        termsAccepted: termsAccepted,
        privacyAccepted: privacyAccepted,
      );
      state = AuthState.authenticated(user);
      await _checkAccountStatus();
      if (state is AuthAuthenticated) {
        await ref.read(pushNotificationServiceProvider).initializeAndRegister();
      }
    } catch (error) {
      state = const AuthState.unauthenticated();
      rethrow;
    }
  }

  /// Called by [authBootstrapProvider] on cold start when a token already
  /// exists in secure storage.
  Future<void> hydrateFromToken() async {
    state = const AuthState.authenticating();
    try {
      final user = await _repository.fetchCurrentUser();
      state = AuthState.authenticated(user);
      await ref.read(pushNotificationServiceProvider).initializeAndRegister();
    } catch (error) {
      if (error is ForbiddenException && error.code != null) {
        state = AuthState.accountIssue(
          _placeholderUser(),
          error.code!,
          error.message,
        );
        return;
      }
      // Invalid/expired token or unreachable server: fall back to a clean
      // logged-out state rather than getting stuck on the splash screen.
      state = const AuthState.unauthenticated();
    }
  }

  /// Re-fetches `/api/user` to confirm there's no account-status block
  /// (banned/suspended/pending_kyc) that only surfaces on an authenticated
  /// call, not at login time.
  Future<void> refreshUser() => _checkAccountStatus();

  Future<void> _checkAccountStatus() async {
    try {
      final user = await _repository.fetchCurrentUser();
      state = AuthState.authenticated(user);
    } catch (error) {
      if (error is ForbiddenException && error.code != null) {
        final fallbackUser = switch (state) {
          AuthAuthenticated(user: final u) => u,
          AuthAccountIssue(user: final u) => u,
          _ => _placeholderUser(),
        };
        state = AuthState.accountIssue(fallbackUser, error.code!, error.message);
      }
      // Network/server errors here are non-fatal — the user keeps whatever
      // state they already had (e.g. the freshly-authenticated state from
      // login/register) and can retry later.
    }
  }

  Future<void> logout() async {
    await _repository.logout();
    await ref.read(pushNotificationServiceProvider).clearRegistration();
    await ref.read(realtimeServiceProvider).disconnect();
    state = const AuthState.unauthenticated();
  }

  /// Called by `features/profile` after a successful profile/avatar/password
  /// update so the rest of the app keeps a single source of truth for the
  /// current [User] instead of each feature caching its own copy.
  void setUser(User user) => state = AuthState.authenticated(user);

  /// Invoked by the 401 interceptor signal — local cleanup only, no network
  /// call (the token is already invalid server-side).
  Future<void> forceLogout() async {
    await ref.read(secureStorageServiceProvider).clearToken();
    await ref.read(pushNotificationServiceProvider).clearRegistration();
    await ref.read(realtimeServiceProvider).disconnect();
    state = const AuthState.unauthenticated();
  }

  User _placeholderUser() => const User(
        id: 0,
        name: '',
        email: '',
        role: 'student',
        accountStatus: 'unknown',
        emailVerified: false,
      );
}

final authProvider = NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

/// Awaited by the router before its first redirect decision so a valid
/// stored token doesn't flash the login screen on cold start.
final authBootstrapProvider = FutureProvider<void>((ref) async {
  final token = await ref.read(secureStorageServiceProvider).readToken();
  if (token == null) return;
  await ref.read(authProvider.notifier).hydrateFromToken();
});
