import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatSender with _$ChatSender {
  const factory ChatSender({
    required int id,
    required String name,
    required String role,
    String? avatar,
  }) = _ChatSender;

  factory ChatSender.fromJson(Map<String, dynamic> json) => _$ChatSenderFromJson(json);
}

@freezed
class ChatMessageTimestamps with _$ChatMessageTimestamps {
  const factory ChatMessageTimestamps({
    required DateTime sentAt,
    DateTime? deliveredAt,
    DateTime? readAt,
  }) = _ChatMessageTimestamps;

  factory ChatMessageTimestamps.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageTimestampsFromJson(json);
}

/// Mirrors `ChatMessageResource`: `{id, session_id, is_system_message, sender?,
/// message, attachments, timestamps:{sent_at,delivered_at,read_at}, is_read, is_own}`.
@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required int id,
    required int sessionId,
    required bool isSystemMessage,
    ChatSender? sender,
    required String message,
    required List<String> attachments,
    required ChatMessageTimestamps timestamps,
    required bool isRead,
    required bool isOwn,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}
