// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionChannel _$SessionChannelFromJson(Map<String, dynamic> json) {
  return _SessionChannel.fromJson(json);
}

/// @nodoc
mixin _$SessionChannel {
  String get channelName => throw _privateConstructorUsedError;
  String get appId => throw _privateConstructorUsedError;
  int? get uidStudent => throw _privateConstructorUsedError;
  int? get uidTutor => throw _privateConstructorUsedError;

  /// Serializes this SessionChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionChannelCopyWith<SessionChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionChannelCopyWith<$Res> {
  factory $SessionChannelCopyWith(
    SessionChannel value,
    $Res Function(SessionChannel) then,
  ) = _$SessionChannelCopyWithImpl<$Res, SessionChannel>;
  @useResult
  $Res call({String channelName, String appId, int? uidStudent, int? uidTutor});
}

/// @nodoc
class _$SessionChannelCopyWithImpl<$Res, $Val extends SessionChannel>
    implements $SessionChannelCopyWith<$Res> {
  _$SessionChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? appId = null,
    Object? uidStudent = freezed,
    Object? uidTutor = freezed,
  }) {
    return _then(
      _value.copyWith(
            channelName:
                null == channelName
                    ? _value.channelName
                    : channelName // ignore: cast_nullable_to_non_nullable
                        as String,
            appId:
                null == appId
                    ? _value.appId
                    : appId // ignore: cast_nullable_to_non_nullable
                        as String,
            uidStudent:
                freezed == uidStudent
                    ? _value.uidStudent
                    : uidStudent // ignore: cast_nullable_to_non_nullable
                        as int?,
            uidTutor:
                freezed == uidTutor
                    ? _value.uidTutor
                    : uidTutor // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionChannelImplCopyWith<$Res>
    implements $SessionChannelCopyWith<$Res> {
  factory _$$SessionChannelImplCopyWith(
    _$SessionChannelImpl value,
    $Res Function(_$SessionChannelImpl) then,
  ) = __$$SessionChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelName, String appId, int? uidStudent, int? uidTutor});
}

/// @nodoc
class __$$SessionChannelImplCopyWithImpl<$Res>
    extends _$SessionChannelCopyWithImpl<$Res, _$SessionChannelImpl>
    implements _$$SessionChannelImplCopyWith<$Res> {
  __$$SessionChannelImplCopyWithImpl(
    _$SessionChannelImpl _value,
    $Res Function(_$SessionChannelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? appId = null,
    Object? uidStudent = freezed,
    Object? uidTutor = freezed,
  }) {
    return _then(
      _$SessionChannelImpl(
        channelName:
            null == channelName
                ? _value.channelName
                : channelName // ignore: cast_nullable_to_non_nullable
                    as String,
        appId:
            null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                    as String,
        uidStudent:
            freezed == uidStudent
                ? _value.uidStudent
                : uidStudent // ignore: cast_nullable_to_non_nullable
                    as int?,
        uidTutor:
            freezed == uidTutor
                ? _value.uidTutor
                : uidTutor // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionChannelImpl implements _SessionChannel {
  const _$SessionChannelImpl({
    required this.channelName,
    required this.appId,
    this.uidStudent,
    this.uidTutor,
  });

  factory _$SessionChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionChannelImplFromJson(json);

  @override
  final String channelName;
  @override
  final String appId;
  @override
  final int? uidStudent;
  @override
  final int? uidTutor;

  @override
  String toString() {
    return 'SessionChannel(channelName: $channelName, appId: $appId, uidStudent: $uidStudent, uidTutor: $uidTutor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionChannelImpl &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.uidStudent, uidStudent) ||
                other.uidStudent == uidStudent) &&
            (identical(other.uidTutor, uidTutor) ||
                other.uidTutor == uidTutor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channelName, appId, uidStudent, uidTutor);

  /// Create a copy of SessionChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionChannelImplCopyWith<_$SessionChannelImpl> get copyWith =>
      __$$SessionChannelImplCopyWithImpl<_$SessionChannelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionChannelImplToJson(this);
  }
}

abstract class _SessionChannel implements SessionChannel {
  const factory _SessionChannel({
    required final String channelName,
    required final String appId,
    final int? uidStudent,
    final int? uidTutor,
  }) = _$SessionChannelImpl;

  factory _SessionChannel.fromJson(Map<String, dynamic> json) =
      _$SessionChannelImpl.fromJson;

  @override
  String get channelName;
  @override
  String get appId;
  @override
  int? get uidStudent;
  @override
  int? get uidTutor;

  /// Create a copy of SessionChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionChannelImplCopyWith<_$SessionChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionDetailTimeline _$SessionDetailTimelineFromJson(
  Map<String, dynamic> json,
) {
  return _SessionDetailTimeline.fromJson(json);
}

/// @nodoc
mixin _$SessionDetailTimeline {
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  int? get durationMinutes => throw _privateConstructorUsedError;

  /// Serializes this SessionDetailTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionDetailTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionDetailTimelineCopyWith<SessionDetailTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDetailTimelineCopyWith<$Res> {
  factory $SessionDetailTimelineCopyWith(
    SessionDetailTimeline value,
    $Res Function(SessionDetailTimeline) then,
  ) = _$SessionDetailTimelineCopyWithImpl<$Res, SessionDetailTimeline>;
  @useResult
  $Res call({
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
  });
}

/// @nodoc
class _$SessionDetailTimelineCopyWithImpl<
  $Res,
  $Val extends SessionDetailTimeline
>
    implements $SessionDetailTimelineCopyWith<$Res> {
  _$SessionDetailTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionDetailTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? durationMinutes = freezed,
  }) {
    return _then(
      _value.copyWith(
            scheduledAt:
                freezed == scheduledAt
                    ? _value.scheduledAt
                    : scheduledAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            startedAt:
                freezed == startedAt
                    ? _value.startedAt
                    : startedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            endedAt:
                freezed == endedAt
                    ? _value.endedAt
                    : endedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            durationMinutes:
                freezed == durationMinutes
                    ? _value.durationMinutes
                    : durationMinutes // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionDetailTimelineImplCopyWith<$Res>
    implements $SessionDetailTimelineCopyWith<$Res> {
  factory _$$SessionDetailTimelineImplCopyWith(
    _$SessionDetailTimelineImpl value,
    $Res Function(_$SessionDetailTimelineImpl) then,
  ) = __$$SessionDetailTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
  });
}

/// @nodoc
class __$$SessionDetailTimelineImplCopyWithImpl<$Res>
    extends
        _$SessionDetailTimelineCopyWithImpl<$Res, _$SessionDetailTimelineImpl>
    implements _$$SessionDetailTimelineImplCopyWith<$Res> {
  __$$SessionDetailTimelineImplCopyWithImpl(
    _$SessionDetailTimelineImpl _value,
    $Res Function(_$SessionDetailTimelineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionDetailTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? durationMinutes = freezed,
  }) {
    return _then(
      _$SessionDetailTimelineImpl(
        scheduledAt:
            freezed == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        startedAt:
            freezed == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        endedAt:
            freezed == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        durationMinutes:
            freezed == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDetailTimelineImpl implements _SessionDetailTimeline {
  const _$SessionDetailTimelineImpl({
    this.scheduledAt,
    this.startedAt,
    this.endedAt,
    this.durationMinutes,
  });

  factory _$SessionDetailTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDetailTimelineImplFromJson(json);

  @override
  final DateTime? scheduledAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final int? durationMinutes;

  @override
  String toString() {
    return 'SessionDetailTimeline(scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, durationMinutes: $durationMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDetailTimelineImpl &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    scheduledAt,
    startedAt,
    endedAt,
    durationMinutes,
  );

  /// Create a copy of SessionDetailTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDetailTimelineImplCopyWith<_$SessionDetailTimelineImpl>
  get copyWith =>
      __$$SessionDetailTimelineImplCopyWithImpl<_$SessionDetailTimelineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDetailTimelineImplToJson(this);
  }
}

abstract class _SessionDetailTimeline implements SessionDetailTimeline {
  const factory _SessionDetailTimeline({
    final DateTime? scheduledAt,
    final DateTime? startedAt,
    final DateTime? endedAt,
    final int? durationMinutes,
  }) = _$SessionDetailTimelineImpl;

  factory _SessionDetailTimeline.fromJson(Map<String, dynamic> json) =
      _$SessionDetailTimelineImpl.fromJson;

  @override
  DateTime? get scheduledAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  int? get durationMinutes;

  /// Create a copy of SessionDetailTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionDetailTimelineImplCopyWith<_$SessionDetailTimelineImpl>
  get copyWith => throw _privateConstructorUsedError;
}

EarlyTermination _$EarlyTerminationFromJson(Map<String, dynamic> json) {
  return _EarlyTermination.fromJson(json);
}

/// @nodoc
mixin _$EarlyTermination {
  String? get reason => throw _privateConstructorUsedError;
  int? get endedBy => throw _privateConstructorUsedError;

  /// Serializes this EarlyTermination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarlyTermination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarlyTerminationCopyWith<EarlyTermination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarlyTerminationCopyWith<$Res> {
  factory $EarlyTerminationCopyWith(
    EarlyTermination value,
    $Res Function(EarlyTermination) then,
  ) = _$EarlyTerminationCopyWithImpl<$Res, EarlyTermination>;
  @useResult
  $Res call({String? reason, int? endedBy});
}

/// @nodoc
class _$EarlyTerminationCopyWithImpl<$Res, $Val extends EarlyTermination>
    implements $EarlyTerminationCopyWith<$Res> {
  _$EarlyTerminationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarlyTermination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = freezed, Object? endedBy = freezed}) {
    return _then(
      _value.copyWith(
            reason:
                freezed == reason
                    ? _value.reason
                    : reason // ignore: cast_nullable_to_non_nullable
                        as String?,
            endedBy:
                freezed == endedBy
                    ? _value.endedBy
                    : endedBy // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EarlyTerminationImplCopyWith<$Res>
    implements $EarlyTerminationCopyWith<$Res> {
  factory _$$EarlyTerminationImplCopyWith(
    _$EarlyTerminationImpl value,
    $Res Function(_$EarlyTerminationImpl) then,
  ) = __$$EarlyTerminationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason, int? endedBy});
}

/// @nodoc
class __$$EarlyTerminationImplCopyWithImpl<$Res>
    extends _$EarlyTerminationCopyWithImpl<$Res, _$EarlyTerminationImpl>
    implements _$$EarlyTerminationImplCopyWith<$Res> {
  __$$EarlyTerminationImplCopyWithImpl(
    _$EarlyTerminationImpl _value,
    $Res Function(_$EarlyTerminationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarlyTermination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = freezed, Object? endedBy = freezed}) {
    return _then(
      _$EarlyTerminationImpl(
        reason:
            freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String?,
        endedBy:
            freezed == endedBy
                ? _value.endedBy
                : endedBy // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EarlyTerminationImpl implements _EarlyTermination {
  const _$EarlyTerminationImpl({this.reason, this.endedBy});

  factory _$EarlyTerminationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarlyTerminationImplFromJson(json);

  @override
  final String? reason;
  @override
  final int? endedBy;

  @override
  String toString() {
    return 'EarlyTermination(reason: $reason, endedBy: $endedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarlyTerminationImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, endedBy);

  /// Create a copy of EarlyTermination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarlyTerminationImplCopyWith<_$EarlyTerminationImpl> get copyWith =>
      __$$EarlyTerminationImplCopyWithImpl<_$EarlyTerminationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EarlyTerminationImplToJson(this);
  }
}

abstract class _EarlyTermination implements EarlyTermination {
  const factory _EarlyTermination({final String? reason, final int? endedBy}) =
      _$EarlyTerminationImpl;

  factory _EarlyTermination.fromJson(Map<String, dynamic> json) =
      _$EarlyTerminationImpl.fromJson;

  @override
  String? get reason;
  @override
  int? get endedBy;

  /// Create a copy of EarlyTermination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarlyTerminationImplCopyWith<_$EarlyTerminationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionDetail _$SessionDetailFromJson(Map<String, dynamic> json) {
  return _SessionDetail.fromJson(json);
}

/// @nodoc
mixin _$SessionDetail {
  int get id => throw _privateConstructorUsedError;
  int get bookingId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  SessionChannel? get channel => throw _privateConstructorUsedError;
  SessionDetailTimeline get timeline => throw _privateConstructorUsedError;
  EarlyTermination? get earlyTermination => throw _privateConstructorUsedError;

  /// Serializes this SessionDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionDetailCopyWith<SessionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDetailCopyWith<$Res> {
  factory $SessionDetailCopyWith(
    SessionDetail value,
    $Res Function(SessionDetail) then,
  ) = _$SessionDetailCopyWithImpl<$Res, SessionDetail>;
  @useResult
  $Res call({
    int id,
    int bookingId,
    String status,
    SessionChannel? channel,
    SessionDetailTimeline timeline,
    EarlyTermination? earlyTermination,
  });

  $SessionChannelCopyWith<$Res>? get channel;
  $SessionDetailTimelineCopyWith<$Res> get timeline;
  $EarlyTerminationCopyWith<$Res>? get earlyTermination;
}

/// @nodoc
class _$SessionDetailCopyWithImpl<$Res, $Val extends SessionDetail>
    implements $SessionDetailCopyWith<$Res> {
  _$SessionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? status = null,
    Object? channel = freezed,
    Object? timeline = null,
    Object? earlyTermination = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            bookingId:
                null == bookingId
                    ? _value.bookingId
                    : bookingId // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            channel:
                freezed == channel
                    ? _value.channel
                    : channel // ignore: cast_nullable_to_non_nullable
                        as SessionChannel?,
            timeline:
                null == timeline
                    ? _value.timeline
                    : timeline // ignore: cast_nullable_to_non_nullable
                        as SessionDetailTimeline,
            earlyTermination:
                freezed == earlyTermination
                    ? _value.earlyTermination
                    : earlyTermination // ignore: cast_nullable_to_non_nullable
                        as EarlyTermination?,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionChannelCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $SessionChannelCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionDetailTimelineCopyWith<$Res> get timeline {
    return $SessionDetailTimelineCopyWith<$Res>(_value.timeline, (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarlyTerminationCopyWith<$Res>? get earlyTermination {
    if (_value.earlyTermination == null) {
      return null;
    }

    return $EarlyTerminationCopyWith<$Res>(_value.earlyTermination!, (value) {
      return _then(_value.copyWith(earlyTermination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionDetailImplCopyWith<$Res>
    implements $SessionDetailCopyWith<$Res> {
  factory _$$SessionDetailImplCopyWith(
    _$SessionDetailImpl value,
    $Res Function(_$SessionDetailImpl) then,
  ) = __$$SessionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int bookingId,
    String status,
    SessionChannel? channel,
    SessionDetailTimeline timeline,
    EarlyTermination? earlyTermination,
  });

  @override
  $SessionChannelCopyWith<$Res>? get channel;
  @override
  $SessionDetailTimelineCopyWith<$Res> get timeline;
  @override
  $EarlyTerminationCopyWith<$Res>? get earlyTermination;
}

/// @nodoc
class __$$SessionDetailImplCopyWithImpl<$Res>
    extends _$SessionDetailCopyWithImpl<$Res, _$SessionDetailImpl>
    implements _$$SessionDetailImplCopyWith<$Res> {
  __$$SessionDetailImplCopyWithImpl(
    _$SessionDetailImpl _value,
    $Res Function(_$SessionDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? status = null,
    Object? channel = freezed,
    Object? timeline = null,
    Object? earlyTermination = freezed,
  }) {
    return _then(
      _$SessionDetailImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        bookingId:
            null == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        channel:
            freezed == channel
                ? _value.channel
                : channel // ignore: cast_nullable_to_non_nullable
                    as SessionChannel?,
        timeline:
            null == timeline
                ? _value.timeline
                : timeline // ignore: cast_nullable_to_non_nullable
                    as SessionDetailTimeline,
        earlyTermination:
            freezed == earlyTermination
                ? _value.earlyTermination
                : earlyTermination // ignore: cast_nullable_to_non_nullable
                    as EarlyTermination?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDetailImpl implements _SessionDetail {
  const _$SessionDetailImpl({
    required this.id,
    required this.bookingId,
    required this.status,
    this.channel,
    required this.timeline,
    this.earlyTermination,
  });

  factory _$SessionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDetailImplFromJson(json);

  @override
  final int id;
  @override
  final int bookingId;
  @override
  final String status;
  @override
  final SessionChannel? channel;
  @override
  final SessionDetailTimeline timeline;
  @override
  final EarlyTermination? earlyTermination;

  @override
  String toString() {
    return 'SessionDetail(id: $id, bookingId: $bookingId, status: $status, channel: $channel, timeline: $timeline, earlyTermination: $earlyTermination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline) &&
            (identical(other.earlyTermination, earlyTermination) ||
                other.earlyTermination == earlyTermination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    bookingId,
    status,
    channel,
    timeline,
    earlyTermination,
  );

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDetailImplCopyWith<_$SessionDetailImpl> get copyWith =>
      __$$SessionDetailImplCopyWithImpl<_$SessionDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDetailImplToJson(this);
  }
}

abstract class _SessionDetail implements SessionDetail {
  const factory _SessionDetail({
    required final int id,
    required final int bookingId,
    required final String status,
    final SessionChannel? channel,
    required final SessionDetailTimeline timeline,
    final EarlyTermination? earlyTermination,
  }) = _$SessionDetailImpl;

  factory _SessionDetail.fromJson(Map<String, dynamic> json) =
      _$SessionDetailImpl.fromJson;

  @override
  int get id;
  @override
  int get bookingId;
  @override
  String get status;
  @override
  SessionChannel? get channel;
  @override
  SessionDetailTimeline get timeline;
  @override
  EarlyTermination? get earlyTermination;

  /// Create a copy of SessionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionDetailImplCopyWith<_$SessionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
