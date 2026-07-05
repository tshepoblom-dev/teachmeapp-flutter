import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'auth_state.freezed.dart';

/// `accountIssue` carries the last-known [User] (not just the `code`)
/// because a 403 with an account-status code can arrive *after* a
/// successful login — e.g. discovered on a later `GET /api/user` refresh —
/// and the interstitial screen still needs to show who's affected.
@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = AuthUnauthenticated;

  const factory AuthState.authenticating() = AuthAuthenticating;

  const factory AuthState.authenticated(User user) = AuthAuthenticated;

  const factory AuthState.accountIssue(User user, String code, String message) =
      AuthAccountIssue;

  const factory AuthState.error(String message) = AuthError;
}
