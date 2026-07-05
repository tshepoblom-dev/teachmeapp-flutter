// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionTimeline _$SessionTimelineFromJson(Map<String, dynamic> json) {
  return _SessionTimeline.fromJson(json);
}

/// @nodoc
mixin _$SessionTimeline {
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  int? get durationMinutes => throw _privateConstructorUsedError;

  /// Serializes this SessionTimeline to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionTimelineCopyWith<SessionTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionTimelineCopyWith<$Res> {
  factory $SessionTimelineCopyWith(
    SessionTimeline value,
    $Res Function(SessionTimeline) then,
  ) = _$SessionTimelineCopyWithImpl<$Res, SessionTimeline>;
  @useResult
  $Res call({
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
  });
}

/// @nodoc
class _$SessionTimelineCopyWithImpl<$Res, $Val extends SessionTimeline>
    implements $SessionTimelineCopyWith<$Res> {
  _$SessionTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionTimeline
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
abstract class _$$SessionTimelineImplCopyWith<$Res>
    implements $SessionTimelineCopyWith<$Res> {
  factory _$$SessionTimelineImplCopyWith(
    _$SessionTimelineImpl value,
    $Res Function(_$SessionTimelineImpl) then,
  ) = __$$SessionTimelineImplCopyWithImpl<$Res>;
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
class __$$SessionTimelineImplCopyWithImpl<$Res>
    extends _$SessionTimelineCopyWithImpl<$Res, _$SessionTimelineImpl>
    implements _$$SessionTimelineImplCopyWith<$Res> {
  __$$SessionTimelineImplCopyWithImpl(
    _$SessionTimelineImpl _value,
    $Res Function(_$SessionTimelineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionTimeline
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
      _$SessionTimelineImpl(
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
class _$SessionTimelineImpl implements _SessionTimeline {
  const _$SessionTimelineImpl({
    this.scheduledAt,
    this.startedAt,
    this.endedAt,
    this.durationMinutes,
  });

  factory _$SessionTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionTimelineImplFromJson(json);

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
    return 'SessionTimeline(scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, durationMinutes: $durationMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTimelineImpl &&
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

  /// Create a copy of SessionTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionTimelineImplCopyWith<_$SessionTimelineImpl> get copyWith =>
      __$$SessionTimelineImplCopyWithImpl<_$SessionTimelineImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionTimelineImplToJson(this);
  }
}

abstract class _SessionTimeline implements SessionTimeline {
  const factory _SessionTimeline({
    final DateTime? scheduledAt,
    final DateTime? startedAt,
    final DateTime? endedAt,
    final int? durationMinutes,
  }) = _$SessionTimelineImpl;

  factory _SessionTimeline.fromJson(Map<String, dynamic> json) =
      _$SessionTimelineImpl.fromJson;

  @override
  DateTime? get scheduledAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  int? get durationMinutes;

  /// Create a copy of SessionTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionTimelineImplCopyWith<_$SessionTimelineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionPreview _$SessionPreviewFromJson(Map<String, dynamic> json) {
  return _SessionPreview.fromJson(json);
}

/// @nodoc
mixin _$SessionPreview {
  int get id => throw _privateConstructorUsedError;
  int get bookingId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  SessionTimeline get timeline => throw _privateConstructorUsedError;

  /// Serializes this SessionPreview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionPreviewCopyWith<SessionPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionPreviewCopyWith<$Res> {
  factory $SessionPreviewCopyWith(
    SessionPreview value,
    $Res Function(SessionPreview) then,
  ) = _$SessionPreviewCopyWithImpl<$Res, SessionPreview>;
  @useResult
  $Res call({int id, int bookingId, String status, SessionTimeline timeline});

  $SessionTimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class _$SessionPreviewCopyWithImpl<$Res, $Val extends SessionPreview>
    implements $SessionPreviewCopyWith<$Res> {
  _$SessionPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? status = null,
    Object? timeline = null,
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
            timeline:
                null == timeline
                    ? _value.timeline
                    : timeline // ignore: cast_nullable_to_non_nullable
                        as SessionTimeline,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionTimelineCopyWith<$Res> get timeline {
    return $SessionTimelineCopyWith<$Res>(_value.timeline, (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionPreviewImplCopyWith<$Res>
    implements $SessionPreviewCopyWith<$Res> {
  factory _$$SessionPreviewImplCopyWith(
    _$SessionPreviewImpl value,
    $Res Function(_$SessionPreviewImpl) then,
  ) = __$$SessionPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int bookingId, String status, SessionTimeline timeline});

  @override
  $SessionTimelineCopyWith<$Res> get timeline;
}

/// @nodoc
class __$$SessionPreviewImplCopyWithImpl<$Res>
    extends _$SessionPreviewCopyWithImpl<$Res, _$SessionPreviewImpl>
    implements _$$SessionPreviewImplCopyWith<$Res> {
  __$$SessionPreviewImplCopyWithImpl(
    _$SessionPreviewImpl _value,
    $Res Function(_$SessionPreviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? status = null,
    Object? timeline = null,
  }) {
    return _then(
      _$SessionPreviewImpl(
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
        timeline:
            null == timeline
                ? _value.timeline
                : timeline // ignore: cast_nullable_to_non_nullable
                    as SessionTimeline,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionPreviewImpl implements _SessionPreview {
  const _$SessionPreviewImpl({
    required this.id,
    required this.bookingId,
    required this.status,
    required this.timeline,
  });

  factory _$SessionPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionPreviewImplFromJson(json);

  @override
  final int id;
  @override
  final int bookingId;
  @override
  final String status;
  @override
  final SessionTimeline timeline;

  @override
  String toString() {
    return 'SessionPreview(id: $id, bookingId: $bookingId, status: $status, timeline: $timeline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionPreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookingId, status, timeline);

  /// Create a copy of SessionPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionPreviewImplCopyWith<_$SessionPreviewImpl> get copyWith =>
      __$$SessionPreviewImplCopyWithImpl<_$SessionPreviewImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionPreviewImplToJson(this);
  }
}

abstract class _SessionPreview implements SessionPreview {
  const factory _SessionPreview({
    required final int id,
    required final int bookingId,
    required final String status,
    required final SessionTimeline timeline,
  }) = _$SessionPreviewImpl;

  factory _SessionPreview.fromJson(Map<String, dynamic> json) =
      _$SessionPreviewImpl.fromJson;

  @override
  int get id;
  @override
  int get bookingId;
  @override
  String get status;
  @override
  SessionTimeline get timeline;

  /// Create a copy of SessionPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionPreviewImplCopyWith<_$SessionPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
