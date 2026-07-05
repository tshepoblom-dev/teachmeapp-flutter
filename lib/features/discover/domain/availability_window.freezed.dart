// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_window.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailabilityWindow _$AvailabilityWindowFromJson(Map<String, dynamic> json) {
  return _AvailabilityWindow.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityWindow {
  int get dayOfWeek => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  /// Serializes this AvailabilityWindow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilityWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityWindowCopyWith<AvailabilityWindow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityWindowCopyWith<$Res> {
  factory $AvailabilityWindowCopyWith(
    AvailabilityWindow value,
    $Res Function(AvailabilityWindow) then,
  ) = _$AvailabilityWindowCopyWithImpl<$Res, AvailabilityWindow>;
  @useResult
  $Res call({int dayOfWeek, String startTime, String endTime});
}

/// @nodoc
class _$AvailabilityWindowCopyWithImpl<$Res, $Val extends AvailabilityWindow>
    implements $AvailabilityWindowCopyWith<$Res> {
  _$AvailabilityWindowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilityWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailabilityWindowImplCopyWith<$Res>
    implements $AvailabilityWindowCopyWith<$Res> {
  factory _$$AvailabilityWindowImplCopyWith(
    _$AvailabilityWindowImpl value,
    $Res Function(_$AvailabilityWindowImpl) then,
  ) = __$$AvailabilityWindowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int dayOfWeek, String startTime, String endTime});
}

/// @nodoc
class __$$AvailabilityWindowImplCopyWithImpl<$Res>
    extends _$AvailabilityWindowCopyWithImpl<$Res, _$AvailabilityWindowImpl>
    implements _$$AvailabilityWindowImplCopyWith<$Res> {
  __$$AvailabilityWindowImplCopyWithImpl(
    _$AvailabilityWindowImpl _value,
    $Res Function(_$AvailabilityWindowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilityWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(
      _$AvailabilityWindowImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityWindowImpl implements _AvailabilityWindow {
  const _$AvailabilityWindowImpl({
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
  });

  factory _$AvailabilityWindowImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityWindowImplFromJson(json);

  @override
  final int dayOfWeek;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'AvailabilityWindow(dayOfWeek: $dayOfWeek, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityWindowImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, startTime, endTime);

  /// Create a copy of AvailabilityWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityWindowImplCopyWith<_$AvailabilityWindowImpl> get copyWith =>
      __$$AvailabilityWindowImplCopyWithImpl<_$AvailabilityWindowImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityWindowImplToJson(this);
  }
}

abstract class _AvailabilityWindow implements AvailabilityWindow {
  const factory _AvailabilityWindow({
    required final int dayOfWeek,
    required final String startTime,
    required final String endTime,
  }) = _$AvailabilityWindowImpl;

  factory _AvailabilityWindow.fromJson(Map<String, dynamic> json) =
      _$AvailabilityWindowImpl.fromJson;

  @override
  int get dayOfWeek;
  @override
  String get startTime;
  @override
  String get endTime;

  /// Create a copy of AvailabilityWindow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilityWindowImplCopyWith<_$AvailabilityWindowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
