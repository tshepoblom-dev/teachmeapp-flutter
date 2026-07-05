// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSenderImpl _$$ChatSenderImplFromJson(Map<String, dynamic> json) =>
    _$ChatSenderImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      role: json['role'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ChatSenderImplToJson(_$ChatSenderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'avatar': instance.avatar,
    };

_$ChatMessageTimestampsImpl _$$ChatMessageTimestampsImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageTimestampsImpl(
  sentAt: DateTime.parse(json['sent_at'] as String),
  deliveredAt:
      json['delivered_at'] == null
          ? null
          : DateTime.parse(json['delivered_at'] as String),
  readAt:
      json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
);

Map<String, dynamic> _$$ChatMessageTimestampsImplToJson(
  _$ChatMessageTimestampsImpl instance,
) => <String, dynamic>{
  'sent_at': instance.sentAt.toIso8601String(),
  'delivered_at': instance.deliveredAt?.toIso8601String(),
  'read_at': instance.readAt?.toIso8601String(),
};

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: (json['id'] as num).toInt(),
      sessionId: (json['session_id'] as num).toInt(),
      isSystemMessage: json['is_system_message'] as bool,
      sender:
          json['sender'] == null
              ? null
              : ChatSender.fromJson(json['sender'] as Map<String, dynamic>),
      message: json['message'] as String,
      attachments:
          (json['attachments'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      timestamps: ChatMessageTimestamps.fromJson(
        json['timestamps'] as Map<String, dynamic>,
      ),
      isRead: json['is_read'] as bool,
      isOwn: json['is_own'] as bool,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session_id': instance.sessionId,
      'is_system_message': instance.isSystemMessage,
      'sender': instance.sender,
      'message': instance.message,
      'attachments': instance.attachments,
      'timestamps': instance.timestamps,
      'is_read': instance.isRead,
      'is_own': instance.isOwn,
    };
