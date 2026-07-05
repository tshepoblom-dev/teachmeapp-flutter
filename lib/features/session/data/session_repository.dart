import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/paginated_response.dart';
import '../domain/chat_message.dart';
import '../domain/join_response.dart';
import '../domain/session_detail.dart';
import 'session_api.dart';

class SessionRepository {
  SessionRepository(this._api);

  final SessionApi _api;

  Future<SessionDetail> fetchSession(int id) async {
    try {
      final body = await _api.fetchSession(id);
      return SessionDetail.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<JoinResponse> join(int id) async {
    try {
      final body = await _api.join(id);
      return JoinResponse.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<SessionDetail> start(int id) async {
    try {
      final body = await _api.start(id);
      return SessionDetail.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<SessionDetail> end(int id) async {
    try {
      final body = await _api.end(id);
      return SessionDetail.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> keepalive(int id) async {
    try {
      await _api.keepalive(id);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<TokenRefreshResponse> refreshToken(int id) async {
    try {
      final body = await _api.refreshToken(id);
      return TokenRefreshResponse.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `GET /sessions/{id}/chat` — bare paginator, no `{success,message}` envelope.
  Future<PaginatedResponse<ChatMessage>> fetchChat(int id, {int page = 1}) async {
    try {
      final body = await _api.fetchChat(id, page: page);
      return PaginatedResponse<ChatMessage>.fromJson(body, ChatMessage.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<ChatMessage> sendChat(int id, {String? message, List<String>? attachments}) async {
    try {
      final body = await _api.sendChat(id, message: message, attachments: attachments);
      return ChatMessage.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> markChatRead(int id) async {
    try {
      await _api.markChatRead(id);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<int> fetchUnreadCount(int id) async {
    try {
      final body = await _api.fetchUnreadCount(id);
      final data = body['data'] as Map<String, dynamic>;
      return data['unread_count'] as int;
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `action_taken` must be `continue_session` or `end_session` (confirmed
  /// against `SubmitReportRequest`) — NOT `report_only`. Returns the server's
  /// confirmation message (it differs depending on whether the session was
  /// also ended), for display in a snackbar/dialog.
  Future<String> submitReport(
    int id, {
    required String reason,
    String? description,
    required String actionTaken,
  }) async {
    try {
      final body = await _api.submitReport(
        id,
        reason: reason,
        description: description,
        actionTaken: actionTaken,
      );
      return body['message'] as String;
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
