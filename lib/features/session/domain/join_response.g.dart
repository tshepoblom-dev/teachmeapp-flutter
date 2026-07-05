// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinResponseImpl _$$JoinResponseImplFromJson(Map<String, dynamic> json) =>
    _$JoinResponseImpl(
      sessionId: (json['session_id'] as num).toInt(),
      channelName: json['channel_name'] as String,
      token: json['token'] as String,
      rtmToken: json['rtm_token'] as String,
      uid: (json['uid'] as num).toInt(),
      appId: json['app_id'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      role: json['role'] as String,
    );

Map<String, dynamic> _$$JoinResponseImplToJson(_$JoinResponseImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'channel_name': instance.channelName,
      'token': instance.token,
      'rtm_token': instance.rtmToken,
      'uid': instance.uid,
      'app_id': instance.appId,
      'expires_in': instance.expiresIn,
      'role': instance.role,
    };

_$TokenRefreshResponseImpl _$$TokenRefreshResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TokenRefreshResponseImpl(
  token: json['token'] as String,
  uid: (json['uid'] as num).toInt(),
  expiresIn: (json['expires_in'] as num).toInt(),
);

Map<String, dynamic> _$$TokenRefreshResponseImplToJson(
  _$TokenRefreshResponseImpl instance,
) => <String, dynamic>{
  'token': instance.token,
  'uid': instance.uid,
  'expires_in': instance.expiresIn,
};
