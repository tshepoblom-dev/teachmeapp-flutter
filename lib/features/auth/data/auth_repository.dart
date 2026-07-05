import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/storage/secure_storage_service.dart';
import '../domain/user.dart';
import 'auth_api.dart';

/// Orchestrates [AuthApi] + [SecureStorageService].
///
/// The one place that reconciles the two different `User`-bearing response
/// shapes: login/register nest under `data.user`, while `GET /api/user`'s
/// `data` *is* the user object directly.
class AuthRepository {
  AuthRepository(this._api, this._secureStorage);

  final AuthApi _api;
  final SecureStorageService _secureStorage;

  Future<User> register({
    required String role,
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    String? timezone,
    required bool termsAccepted,
    required bool privacyAccepted,
  }) async {
    try {
      final body = await _api.register({
        'role': role,
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        if (timezone != null) 'timezone': timezone,
        'terms_accepted': termsAccepted,
        'privacy_accepted': privacyAccepted,
      });
      return _persistAndParseAuthPayload(body);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<User> login({required String email, required String password}) async {
    try {
      final body = await _api.login(
        email: email,
        password: password,
        deviceName: 'flutter-app',
      );
      return _persistAndParseAuthPayload(body);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> logout() async {
    try {
      await _api.logout();
    } catch (_) {
      // Best-effort: the user must always be able to leave the app's
      // "logged in" state locally even if the network call fails.
    }
    await _secureStorage.clearToken();
  }

  Future<User> fetchCurrentUser() async {
    try {
      final body = await _api.fetchCurrentUser();
      final data = body['data'] as Map<String, dynamic>;
      return User.fromJson(data);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<bool> isEmailVerified() async {
    try {
      final body = await _api.emailVerifyStatus();
      final data = body['data'] as Map<String, dynamic>?;
      return (data?['email_verified'] ?? data?['verified']) as bool? ?? false;
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> resendVerificationEmail() async {
    try {
      await _api.resendVerificationEmail();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await _api.forgotPassword(email);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> resetPassword({
    required String email,
    required String token,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      await _api.resetPassword(
        email: email,
        token: token,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<User> _persistAndParseAuthPayload(Map<String, dynamic> body) async {
    final data = body['data'] as Map<String, dynamic>;
    final token = data['token'] as String;
    await _secureStorage.saveToken(token);
    return User.fromJson(data['user'] as Map<String, dynamic>);
  }
}
