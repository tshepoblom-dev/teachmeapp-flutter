import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../auth/domain/user.dart';
import 'profile_api.dart';

class ProfileRepository {
  ProfileRepository(this._api);

  final ProfileApi _api;

  Future<User> updateProfile(Map<String, dynamic> data) async {
    try {
      final body = await _api.updateProfile(data);
      return User.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<User> uploadAvatar(File file) async {
    try {
      final body = await _api.uploadAvatar(file);
      return User.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newPasswordConfirmation,
  }) async {
    try {
      await _api.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
        newPasswordConfirmation: newPasswordConfirmation,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
