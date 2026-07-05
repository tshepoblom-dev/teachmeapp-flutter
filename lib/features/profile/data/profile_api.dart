import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

class ProfileApi {
  ProfileApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> updateProfile(Map<String, dynamic> data) async {
    final response = await _dio.put(ApiEndpoints.userProfile, data: data);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> uploadAvatar(File file) async {
    final formData = FormData.fromMap({
      'avatar': await MultipartFile.fromFile(file.path),
    });
    final response = await _dio.post(ApiEndpoints.userProfileAvatar, data: formData);
    return response.data as Map<String, dynamic>;
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newPasswordConfirmation,
  }) async {
    await _dio.put(ApiEndpoints.userPassword, data: {
      'current_password': currentPassword,
      'password': newPassword,
      'password_confirmation': newPasswordConfirmation,
    });
  }
}
