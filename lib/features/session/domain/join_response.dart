import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_response.freezed.dart';
part 'join_response.g.dart';

/// Mirrors the exact payload returned by `POST /api/sessions/{id}/join`:
/// `{session_id, channel_name, token, rtm_token, uid, app_id, expires_in, role}`.
@freezed
class JoinResponse with _$JoinResponse {
  const factory JoinResponse({
    required int sessionId,
    required String channelName,
    required String token,
    required String rtmToken,
    required int uid,
    required String appId,
    required int expiresIn,
    required String role,
  }) = _JoinResponse;

  factory JoinResponse.fromJson(Map<String, dynamic> json) => _$JoinResponseFromJson(json);
}

/// Mirrors `POST /api/sessions/{id}/token/refresh`: `{token, uid, expires_in}`.
@freezed
class TokenRefreshResponse with _$TokenRefreshResponse {
  const factory TokenRefreshResponse({
    required String token,
    required int uid,
    required int expiresIn,
  }) = _TokenRefreshResponse;

  factory TokenRefreshResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshResponseFromJson(json);
}
