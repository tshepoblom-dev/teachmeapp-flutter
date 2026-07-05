import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/paginated_response.dart';
import '../domain/app_notification.dart';
import 'notification_api.dart';

class NotificationRepository {
  NotificationRepository(this._api);

  final NotificationApi _api;

  /// `GET /notifications` — double-wrapped paginator.
  Future<PaginatedResponse<AppNotification>> fetchNotifications({int page = 1}) async {
    try {
      final body = await _api.fetchNotifications(page: page);
      final wrapper = body['data'] as Map<String, dynamic>;
      return PaginatedResponse<AppNotification>.fromJson(wrapper, AppNotification.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> markRead(String id) async {
    try {
      await _api.markRead(id);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> markAllRead() async {
    try {
      await _api.markAllRead();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// No-op pending Firebase project setup — see [registerFcmToken] callers.
  Future<void> registerFcmToken(String token) async {
    try {
      await _api.registerFcmToken(token);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> clearFcmToken() async {
    try {
      await _api.clearFcmToken();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
