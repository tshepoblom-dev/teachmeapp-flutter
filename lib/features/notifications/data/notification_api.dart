import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

/// Raw Dio calls for notifications + the FCM token registration endpoints.
/// `index` is double-wrapped (`Resource::collection(...)->response()->getData(true)`
/// passed to `success()`): `{success,message,data:{data:[...],links,meta}}`.
/// `markRead`/`markAllRead` return `{success,message}` with no `data` key.
/// `POST`/`DELETE /fcm-token` are NOT behind `ApiResponse` — they return ad-hoc
/// shapes (`{status:'ok'}` / `{message:'...'}`) with no `success` key at all,
/// so callers should treat a non-2xx purely by exception, not by inspecting
/// `success`.
class NotificationApi {
  NotificationApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> fetchNotifications({int page = 1}) async {
    final response = await _dio.get(ApiEndpoints.notifications, queryParameters: {'page': page});
    return response.data as Map<String, dynamic>;
  }

  Future<void> markRead(String id) async {
    await _dio.post(ApiEndpoints.notificationRead(id));
  }

  Future<void> markAllRead() async {
    await _dio.post(ApiEndpoints.notificationsReadAll);
  }

  Future<void> registerFcmToken(String token) async {
    await _dio.post(ApiEndpoints.fcmToken, data: {'token': token});
  }

  Future<void> clearFcmToken() async {
    await _dio.delete(ApiEndpoints.fcmToken);
  }
}
