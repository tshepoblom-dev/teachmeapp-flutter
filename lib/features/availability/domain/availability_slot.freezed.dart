// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailabilitySlot _$AvailabilitySlotFromJson(Map<String, dynamic> json) {
  return _AvailabilitySlot.fromJson(json);
}

/// @nodoc
mixin _$AvailabilitySlot {
  int get id => throw _privateConstructorUsedError;
  int get dayOfWeek => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  bool get isRecurring => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get validFrom => throw _privateConstructorUsedError;
  String? get validUntil => throw _privateConstructorUsedError;

  /// Serializes this AvailabilitySlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilitySlotCopyWith<AvailabilitySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilitySlotCopyWith<$Res> {
  factory $AvailabilitySlotCopyWith(
    AvailabilitySlot value,
    $Res Function(AvailabilitySlot) then,
  ) = _$AvailabilitySlotCopyWithImpl<$Res, AvailabilitySlot>;
  @useResult
  $Res call({
    int id,
    int dayOfWeek,
    String startTime,
    String endTime,
    bool isRecurring,
    bool isActive,
    String? validFrom,
    String? validUntil,
  });
}

/// @nodoc
class _$AvailabilitySlotCopyWithImpl<$Res, $Val extends AvailabilitySlot>
    implements $AvailabilitySlotCopyWith<$Res> {
  _$AvailabilitySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayOfWeek = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isRecurring = null,
    Object? isActive = null,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            dayOfWeek:
                null == dayOfWeek
                    ? _value.dayOfWeek
                    : dayOfWeek // ignore: cast_nullable_to_non_nullable
                        as int,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as String,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as String,
            isRecurring:
                null == isRecurring
                    ? _value.isRecurring
                    : isRecurring // ignore: cast_nullable_to_non_nullable
                        as bool,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            validFrom:
                freezed == validFrom
                    ? _value.validFrom
                    : validFrom // ignore: cast_nullable_to_non_nullable
                        as String?,
            validUntil:
                freezed == validUntil
                    ? _value.validUntil
                    : validUntil // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailabilitySlotImplCopyWith<$Res>
    implements $AvailabilitySlotCopyWith<$Res> {
  factory _$$AvailabilitySlotImplCopyWith(
    _$AvailabilitySlotImpl value,
    $Res Function(_$AvailabilitySlotImpl) then,
  ) = __$$AvailabilitySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int dayOfWeek,
    String startTime,
    String endTime,
    bool isRecurring,
    bool isActive,
    String? validFrom,
    String? validUntil,
  });
}

/// @nodoc
class __$$AvailabilitySlotImplCopyWithImpl<$Res>
    extends _$AvailabilitySlotCopyWithImpl<$Res, _$AvailabilitySlotImpl>
    implements _$$AvailabilitySlotImplCopyWith<$Res> {
  __$$AvailabilitySlotImplCopyWithImpl(
    _$AvailabilitySlotImpl _value,
    $Res Function(_$AvailabilitySlotImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayOfWeek = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isRecurring = null,
    Object? isActive = null,
    Object? validFrom = freezed,
    Object? validUntil = freezed,
  }) {
    return _then(
      _$AvailabilitySlotImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        dayOfWeek:
            null == dayOfWeek
                ? _value.dayOfWeek
                : dayOfWeek // ignore: cast_nullable_to_non_nullable
                    as int,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as String,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as String,
        isRecurring:
            null == isRecurring
                ? _value.isRecurring
                : isRecurring // ignore: cast_nullable_to_non_nullable
                    as bool,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        validFrom:
            freezed == validFrom
                ? _value.validFrom
                : validFrom // ignore: cast_nullable_to_non_nullable
                    as String?,
        validUntil:
            freezed == validUntil
                ? _value.validUntil
                : validUntil // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilitySlotImpl implements _AvailabilitySlot {
  const _$AvailabilitySlotImpl({
    required this.id,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
    required this.isRecurring,
    required this.isActive,
    this.validFrom,
    this.validUntil,
  });

  factory _$AvailabilitySlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilitySlotImplFromJson(json);

  @override
  final int id;
  @override
  final int dayOfWeek;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final bool isRecurring;
  @override
  final bool isActive;
  @override
  final String? validFrom;
  @override
  final String? validUntil;

  @override
  String toString() {
    return 'AvailabilitySlot(id: $id, dayOfWeek: $dayOfWeek, startTime: $startTime, endTime: $endTime, isRecurring: $isRecurring, isActive: $isActive, validFrom: $validFrom, validUntil: $validUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilitySlotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    dayOfWeek,
    startTime,
    endTime,
    isRecurring,
    isActive,
    validFrom,
    validUntil,
  );

  /// Create a copy of AvailabilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilitySlotImplCopyWith<_$AvailabilitySlotImpl> get copyWith =>
      __$$AvailabilitySlotImplCopyWithImpl<_$AvailabilitySlotImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilitySlotImplToJson(this);
  }
}

abstract class _AvailabilitySlot implements AvailabilitySlot {
  const factory _AvailabilitySlot({
    required final int id,
    required final int dayOfWeek,
    required final String startTime,
    required final String endTime,
    required final bool isRecurring,
    required final bool isActive,
    final String? validFrom,
    final String? validUntil,
  }) = _$AvailabilitySlotImpl;

  factory _AvailabilitySlot.fromJson(Map<String, dynamic> json) =
      _$AvailabilitySlotImpl.fromJson;

  @override
  int get id;
  @override
  int get dayOfWeek;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  bool get isRecurring;
  @override
  bool get isActive;
  @override
  String? get validFrom;
  @override
  String? get validUntil;

  /// Create a copy of AvailabilitySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilitySlotImplCopyWith<_$AvailabilitySlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
