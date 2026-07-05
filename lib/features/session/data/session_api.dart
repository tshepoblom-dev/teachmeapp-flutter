import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

/// Raw Dio calls for the live-session domain. Verified against
/// `SessionController`/`ChatController`/`ReportController` source:
///   - `show`/`join`/`start`/`end`/`keepalive`/`tokenRefresh` use the
///     `{success,message,data}` envelope.
///   - `chat` (index) returns a bare Laravel paginator: `{data:[], links,
///     meta}` — NO `{success,message}` wrapper.
///   - `chat/read`/`chat/unread`/`report` use the `{success,message,data}`
///     envelope.
class SessionApi {
  SessionApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> fetchSession(int id) async {
    final response = await _dio.get(ApiEndpoints.session(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> join(int id) async {
    final response = await _dio.post(ApiEndpoints.sessionJoin(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> start(int id) async {
    final response = await _dio.post(ApiEndpoints.sessionStart(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> end(int id) async {
    final response = await _dio.post(ApiEndpoints.sessionEnd(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> keepalive(int id) async {
    final response = await _dio.post(ApiEndpoints.sessionKeepalive(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> refreshToken(int id) async {
    final response = await _dio.post(ApiEndpoints.sessionTokenRefresh(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchChat(int id, {int page = 1}) async {
    final response = await _dio.get(
      ApiEndpoints.sessionChat(id),
      queryParameters: {'page': page},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> sendChat(
    int id, {
    String? message,
    List<String>? attachments,
  }) async {
    final response = await _dio.post(
      ApiEndpoints.sessionChat(id),
      data: {
        if (message != null) 'message': message,
        if (attachments != null) 'attachments': attachments,
      },
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> markChatRead(int id) async {
    final response = await _dio.post(ApiEndpoints.sessionChatRead(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchUnreadCount(int id) async {
    final response = await _dio.get(ApiEndpoints.sessionChatUnread(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> submitReport(
    int id, {
    required String reason,
    String? description,
    required String actionTaken,
  }) async {
    final response = await _dio.post(
      ApiEndpoints.sessionReport(id),
      data: {
        'reason': reason,
        if (description != null) 'description': description,
        'action_taken': actionTaken,
      },
    );
    return response.data as Map<String, dynamic>;
  }
}
