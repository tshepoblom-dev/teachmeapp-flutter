// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookingCreateFormState {
  String? get subject => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Map<String, List<String>>? get fieldErrors =>
      throw _privateConstructorUsedError;

  /// Create a copy of BookingCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCreateFormStateCopyWith<BookingCreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCreateFormStateCopyWith<$Res> {
  factory $BookingCreateFormStateCopyWith(
    BookingCreateFormState value,
    $Res Function(BookingCreateFormState) then,
  ) = _$BookingCreateFormStateCopyWithImpl<$Res, BookingCreateFormState>;
  @useResult
  $Res call({
    String? subject,
    String description,
    DateTime? scheduledAt,
    int durationMinutes,
    bool isSubmitting,
    Map<String, List<String>>? fieldErrors,
  });
}

/// @nodoc
class _$BookingCreateFormStateCopyWithImpl<
  $Res,
  $Val extends BookingCreateFormState
>
    implements $BookingCreateFormStateCopyWith<$Res> {
  _$BookingCreateFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? description = null,
    Object? scheduledAt = freezed,
    Object? durationMinutes = null,
    Object? isSubmitting = null,
    Object? fieldErrors = freezed,
  }) {
    return _then(
      _value.copyWith(
            subject:
                freezed == subject
                    ? _value.subject
                    : subject // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            scheduledAt:
                freezed == scheduledAt
                    ? _value.scheduledAt
                    : scheduledAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            durationMinutes:
                null == durationMinutes
                    ? _value.durationMinutes
                    : durationMinutes // ignore: cast_nullable_to_non_nullable
                        as int,
            isSubmitting:
                null == isSubmitting
                    ? _value.isSubmitting
                    : isSubmitting // ignore: cast_nullable_to_non_nullable
                        as bool,
            fieldErrors:
                freezed == fieldErrors
                    ? _value.fieldErrors
                    : fieldErrors // ignore: cast_nullable_to_non_nullable
                        as Map<String, List<String>>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingCreateFormStateImplCopyWith<$Res>
    implements $BookingCreateFormStateCopyWith<$Res> {
  factory _$$BookingCreateFormStateImplCopyWith(
    _$BookingCreateFormStateImpl value,
    $Res Function(_$BookingCreateFormStateImpl) then,
  ) = __$$BookingCreateFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? subject,
    String description,
    DateTime? scheduledAt,
    int durationMinutes,
    bool isSubmitting,
    Map<String, List<String>>? fieldErrors,
  });
}

/// @nodoc
class __$$BookingCreateFormStateImplCopyWithImpl<$Res>
    extends
        _$BookingCreateFormStateCopyWithImpl<$Res, _$BookingCreateFormStateImpl>
    implements _$$BookingCreateFormStateImplCopyWith<$Res> {
  __$$BookingCreateFormStateImplCopyWithImpl(
    _$BookingCreateFormStateImpl _value,
    $Res Function(_$BookingCreateFormStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? description = null,
    Object? scheduledAt = freezed,
    Object? durationMinutes = null,
    Object? isSubmitting = null,
    Object? fieldErrors = freezed,
  }) {
    return _then(
      _$BookingCreateFormStateImpl(
        subject:
            freezed == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        scheduledAt:
            freezed == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        durationMinutes:
            null == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                    as int,
        isSubmitting:
            null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                    as bool,
        fieldErrors:
            freezed == fieldErrors
                ? _value._fieldErrors
                : fieldErrors // ignore: cast_nullable_to_non_nullable
                    as Map<String, List<String>>?,
      ),
    );
  }
}

/// @nodoc

class _$BookingCreateFormStateImpl implements _BookingCreateFormState {
  const _$BookingCreateFormStateImpl({
    this.subject,
    this.description = '',
    this.scheduledAt,
    this.durationMinutes = 60,
    this.isSubmitting = false,
    final Map<String, List<String>>? fieldErrors,
  }) : _fieldErrors = fieldErrors;

  @override
  final String? subject;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? scheduledAt;
  @override
  @JsonKey()
  final int durationMinutes;
  @override
  @JsonKey()
  final bool isSubmitting;
  final Map<String, List<String>>? _fieldErrors;
  @override
  Map<String, List<String>>? get fieldErrors {
    final value = _fieldErrors;
    if (value == null) return null;
    if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BookingCreateFormState(subject: $subject, description: $description, scheduledAt: $scheduledAt, durationMinutes: $durationMinutes, isSubmitting: $isSubmitting, fieldErrors: $fieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCreateFormStateImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality().equals(
              other._fieldErrors,
              _fieldErrors,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    subject,
    description,
    scheduledAt,
    durationMinutes,
    isSubmitting,
    const DeepCollectionEquality().hash(_fieldErrors),
  );

  /// Create a copy of BookingCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCreateFormStateImplCopyWith<_$BookingCreateFormStateImpl>
  get copyWith =>
      __$$BookingCreateFormStateImplCopyWithImpl<_$BookingCreateFormStateImpl>(
        this,
        _$identity,
      );
}

abstract class _BookingCreateFormState implements BookingCreateFormState {
  const factory _BookingCreateFormState({
    final String? subject,
    final String description,
    final DateTime? scheduledAt,
    final int durationMinutes,
    final bool isSubmitting,
    final Map<String, List<String>>? fieldErrors,
  }) = _$BookingCreateFormStateImpl;

  @override
  String? get subject;
  @override
  String get description;
  @override
  DateTime? get scheduledAt;
  @override
  int get durationMinutes;
  @override
  bool get isSubmitting;
  @override
  Map<String, List<String>>? get fieldErrors;

  /// Create a copy of BookingCreateFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingCreateFormStateImplCopyWith<_$BookingCreateFormStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
