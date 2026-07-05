import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

/// Raw Dio calls for the auth domain. Returns the decoded response body
/// as-is (`Map<String, dynamic>`) — unwrapping/typing into [User] is
/// [AuthRepository]'s job, since the two endpoints below nest the user
/// object differently (`data.user` vs bare `data`).
class AuthApi {
  AuthApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> register(Map<String, dynamic> payload) async {
    final response = await _dio.post(ApiEndpoints.authRegister, data: payload);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
    String? deviceName,
  }) async {
    final response = await _dio.post(ApiEndpoints.authLogin, data: {
      'email': email,
      'password': password,
      if (deviceName != null) 'device_name': deviceName,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<void> logout() async {
    await _dio.post(ApiEndpoints.authLogout);
  }

  Future<Map<String, dynamic>> forgotPassword(String email) async {
    final response =
        await _dio.post(ApiEndpoints.authForgotPassword, data: {'email': email});
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> resetPassword({
    required String email,
    required String token,
    required String password,
    required String passwordConfirmation,
  }) async {
    final response = await _dio.post(ApiEndpoints.authResetPassword, data: {
      'email': email,
      'token': token,
      'password': password,
      'password_confirmation': passwordConfirmation,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchCurrentUser() async {
    final response = await _dio.get(ApiEndpoints.user);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> emailVerifyStatus() async {
    final response = await _dio.get(ApiEndpoints.emailVerifyStatus);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> resendVerificationEmail() async {
    final response = await _dio.post(ApiEndpoints.emailVerificationNotification);
    return response.data as Map<String, dynamic>;
  }
}
