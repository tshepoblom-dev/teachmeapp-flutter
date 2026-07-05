// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatSender _$ChatSenderFromJson(Map<String, dynamic> json) {
  return _ChatSender.fromJson(json);
}

/// @nodoc
mixin _$ChatSender {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this ChatSender to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatSender
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSenderCopyWith<ChatSender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSenderCopyWith<$Res> {
  factory $ChatSenderCopyWith(
    ChatSender value,
    $Res Function(ChatSender) then,
  ) = _$ChatSenderCopyWithImpl<$Res, ChatSender>;
  @useResult
  $Res call({int id, String name, String role, String? avatar});
}

/// @nodoc
class _$ChatSenderCopyWithImpl<$Res, $Val extends ChatSender>
    implements $ChatSenderCopyWith<$Res> {
  _$ChatSenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSender
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? avatar = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String,
            avatar:
                freezed == avatar
                    ? _value.avatar
                    : avatar // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatSenderImplCopyWith<$Res>
    implements $ChatSenderCopyWith<$Res> {
  factory _$$ChatSenderImplCopyWith(
    _$ChatSenderImpl value,
    $Res Function(_$ChatSenderImpl) then,
  ) = __$$ChatSenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String role, String? avatar});
}

/// @nodoc
class __$$ChatSenderImplCopyWithImpl<$Res>
    extends _$ChatSenderCopyWithImpl<$Res, _$ChatSenderImpl>
    implements _$$ChatSenderImplCopyWith<$Res> {
  __$$ChatSenderImplCopyWithImpl(
    _$ChatSenderImpl _value,
    $Res Function(_$ChatSenderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSender
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? avatar = freezed,
  }) {
    return _then(
      _$ChatSenderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String,
        avatar:
            freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatSenderImpl implements _ChatSender {
  const _$ChatSenderImpl({
    required this.id,
    required this.name,
    required this.role,
    this.avatar,
  });

  factory _$ChatSenderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSenderImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String role;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'ChatSender(id: $id, name: $name, role: $role, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSenderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role, avatar);

  /// Create a copy of ChatSender
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSenderImplCopyWith<_$ChatSenderImpl> get copyWith =>
      __$$ChatSenderImplCopyWithImpl<_$ChatSenderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSenderImplToJson(this);
  }
}

abstract class _ChatSender implements ChatSender {
  const factory _ChatSender({
    required final int id,
    required final String name,
    required final String role,
    final String? avatar,
  }) = _$ChatSenderImpl;

  factory _ChatSender.fromJson(Map<String, dynamic> json) =
      _$ChatSenderImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get role;
  @override
  String? get avatar;

  /// Create a copy of ChatSender
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSenderImplCopyWith<_$ChatSenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessageTimestamps _$ChatMessageTimestampsFromJson(
  Map<String, dynamic> json,
) {
  return _ChatMessageTimestamps.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageTimestamps {
  DateTime get sentAt => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageTimestamps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageTimestamps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageTimestampsCopyWith<ChatMessageTimestamps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageTimestampsCopyWith<$Res> {
  factory $ChatMessageTimestampsCopyWith(
    ChatMessageTimestamps value,
    $Res Function(ChatMessageTimestamps) then,
  ) = _$ChatMessageTimestampsCopyWithImpl<$Res, ChatMessageTimestamps>;
  @useResult
  $Res call({DateTime sentAt, DateTime? deliveredAt, DateTime? readAt});
}

/// @nodoc
class _$ChatMessageTimestampsCopyWithImpl<
  $Res,
  $Val extends ChatMessageTimestamps
>
    implements $ChatMessageTimestampsCopyWith<$Res> {
  _$ChatMessageTimestampsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageTimestamps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentAt = null,
    Object? deliveredAt = freezed,
    Object? readAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            sentAt:
                null == sentAt
                    ? _value.sentAt
                    : sentAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deliveredAt:
                freezed == deliveredAt
                    ? _value.deliveredAt
                    : deliveredAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            readAt:
                freezed == readAt
                    ? _value.readAt
                    : readAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageTimestampsImplCopyWith<$Res>
    implements $ChatMessageTimestampsCopyWith<$Res> {
  factory _$$ChatMessageTimestampsImplCopyWith(
    _$ChatMessageTimestampsImpl value,
    $Res Function(_$ChatMessageTimestampsImpl) then,
  ) = __$$ChatMessageTimestampsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime sentAt, DateTime? deliveredAt, DateTime? readAt});
}

/// @nodoc
class __$$ChatMessageTimestampsImplCopyWithImpl<$Res>
    extends
        _$ChatMessageTimestampsCopyWithImpl<$Res, _$ChatMessageTimestampsImpl>
    implements _$$ChatMessageTimestampsImplCopyWith<$Res> {
  __$$ChatMessageTimestampsImplCopyWithImpl(
    _$ChatMessageTimestampsImpl _value,
    $Res Function(_$ChatMessageTimestampsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageTimestamps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentAt = null,
    Object? deliveredAt = freezed,
    Object? readAt = freezed,
  }) {
    return _then(
      _$ChatMessageTimestampsImpl(
        sentAt:
            null == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deliveredAt:
            freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        readAt:
            freezed == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageTimestampsImpl implements _ChatMessageTimestamps {
  const _$ChatMessageTimestampsImpl({
    required this.sentAt,
    this.deliveredAt,
    this.readAt,
  });

  factory _$ChatMessageTimestampsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageTimestampsImplFromJson(json);

  @override
  final DateTime sentAt;
  @override
  final DateTime? deliveredAt;
  @override
  final DateTime? readAt;

  @override
  String toString() {
    return 'ChatMessageTimestamps(sentAt: $sentAt, deliveredAt: $deliveredAt, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageTimestampsImpl &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sentAt, deliveredAt, readAt);

  /// Create a copy of ChatMessageTimestamps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageTimestampsImplCopyWith<_$ChatMessageTimestampsImpl>
  get copyWith =>
      __$$ChatMessageTimestampsImplCopyWithImpl<_$ChatMessageTimestampsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageTimestampsImplToJson(this);
  }
}

abstract class _ChatMessageTimestamps implements ChatMessageTimestamps {
  const factory _ChatMessageTimestamps({
    required final DateTime sentAt,
    final DateTime? deliveredAt,
    final DateTime? readAt,
  }) = _$ChatMessageTimestampsImpl;

  factory _ChatMessageTimestamps.fromJson(Map<String, dynamic> json) =
      _$ChatMessageTimestampsImpl.fromJson;

  @override
  DateTime get sentAt;
  @override
  DateTime? get deliveredAt;
  @override
  DateTime? get readAt;

  /// Create a copy of ChatMessageTimestamps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageTimestampsImplCopyWith<_$ChatMessageTimestampsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  int get id => throw _privateConstructorUsedError;
  int get sessionId => throw _privateConstructorUsedError;
  bool get isSystemMessage => throw _privateConstructorUsedError;
  ChatSender? get sender => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;
  ChatMessageTimestamps get timestamps => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  bool get isOwn => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
    ChatMessage value,
    $Res Function(ChatMessage) then,
  ) = _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call({
    int id,
    int sessionId,
    bool isSystemMessage,
    ChatSender? sender,
    String message,
    List<String> attachments,
    ChatMessageTimestamps timestamps,
    bool isRead,
    bool isOwn,
  });

  $ChatSenderCopyWith<$Res>? get sender;
  $ChatMessageTimestampsCopyWith<$Res> get timestamps;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? isSystemMessage = null,
    Object? sender = freezed,
    Object? message = null,
    Object? attachments = null,
    Object? timestamps = null,
    Object? isRead = null,
    Object? isOwn = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            sessionId:
                null == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as int,
            isSystemMessage:
                null == isSystemMessage
                    ? _value.isSystemMessage
                    : isSystemMessage // ignore: cast_nullable_to_non_nullable
                        as bool,
            sender:
                freezed == sender
                    ? _value.sender
                    : sender // ignore: cast_nullable_to_non_nullable
                        as ChatSender?,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            attachments:
                null == attachments
                    ? _value.attachments
                    : attachments // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            timestamps:
                null == timestamps
                    ? _value.timestamps
                    : timestamps // ignore: cast_nullable_to_non_nullable
                        as ChatMessageTimestamps,
            isRead:
                null == isRead
                    ? _value.isRead
                    : isRead // ignore: cast_nullable_to_non_nullable
                        as bool,
            isOwn:
                null == isOwn
                    ? _value.isOwn
                    : isOwn // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatSenderCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $ChatSenderCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageTimestampsCopyWith<$Res> get timestamps {
    return $ChatMessageTimestampsCopyWith<$Res>(_value.timestamps, (value) {
      return _then(_value.copyWith(timestamps: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
    _$ChatMessageImpl value,
    $Res Function(_$ChatMessageImpl) then,
  ) = __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int sessionId,
    bool isSystemMessage,
    ChatSender? sender,
    String message,
    List<String> attachments,
    ChatMessageTimestamps timestamps,
    bool isRead,
    bool isOwn,
  });

  @override
  $ChatSenderCopyWith<$Res>? get sender;
  @override
  $ChatMessageTimestampsCopyWith<$Res> get timestamps;
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
    _$ChatMessageImpl _value,
    $Res Function(_$ChatMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? isSystemMessage = null,
    Object? sender = freezed,
    Object? message = null,
    Object? attachments = null,
    Object? timestamps = null,
    Object? isRead = null,
    Object? isOwn = null,
  }) {
    return _then(
      _$ChatMessageImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        sessionId:
            null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as int,
        isSystemMessage:
            null == isSystemMessage
                ? _value.isSystemMessage
                : isSystemMessage // ignore: cast_nullable_to_non_nullable
                    as bool,
        sender:
            freezed == sender
                ? _value.sender
                : sender // ignore: cast_nullable_to_non_nullable
                    as ChatSender?,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        attachments:
            null == attachments
                ? _value._attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        timestamps:
            null == timestamps
                ? _value.timestamps
                : timestamps // ignore: cast_nullable_to_non_nullable
                    as ChatMessageTimestamps,
        isRead:
            null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                    as bool,
        isOwn:
            null == isOwn
                ? _value.isOwn
                : isOwn // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl({
    required this.id,
    required this.sessionId,
    required this.isSystemMessage,
    this.sender,
    required this.message,
    required final List<String> attachments,
    required this.timestamps,
    required this.isRead,
    required this.isOwn,
  }) : _attachments = attachments;

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final int id;
  @override
  final int sessionId;
  @override
  final bool isSystemMessage;
  @override
  final ChatSender? sender;
  @override
  final String message;
  final List<String> _attachments;
  @override
  List<String> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final ChatMessageTimestamps timestamps;
  @override
  final bool isRead;
  @override
  final bool isOwn;

  @override
  String toString() {
    return 'ChatMessage(id: $id, sessionId: $sessionId, isSystemMessage: $isSystemMessage, sender: $sender, message: $message, attachments: $attachments, timestamps: $timestamps, isRead: $isRead, isOwn: $isOwn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.isSystemMessage, isSystemMessage) ||
                other.isSystemMessage == isSystemMessage) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._attachments,
              _attachments,
            ) &&
            (identical(other.timestamps, timestamps) ||
                other.timestamps == timestamps) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.isOwn, isOwn) || other.isOwn == isOwn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    isSystemMessage,
    sender,
    message,
    const DeepCollectionEquality().hash(_attachments),
    timestamps,
    isRead,
    isOwn,
  );

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage({
    required final int id,
    required final int sessionId,
    required final bool isSystemMessage,
    final ChatSender? sender,
    required final String message,
    required final List<String> attachments,
    required final ChatMessageTimestamps timestamps,
    required final bool isRead,
    required final bool isOwn,
  }) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  int get id;
  @override
  int get sessionId;
  @override
  bool get isSystemMessage;
  @override
  ChatSender? get sender;
  @override
  String get message;
  @override
  List<String> get attachments;
  @override
  ChatMessageTimestamps get timestamps;
  @override
  bool get isRead;
  @override
  bool get isOwn;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
