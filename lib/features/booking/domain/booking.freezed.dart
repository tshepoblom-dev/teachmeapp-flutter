// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookingFinancials _$BookingFinancialsFromJson(Map<String, dynamic> json) {
  return _BookingFinancials.fromJson(json);
}

/// @nodoc
mixin _$BookingFinancials {
  @JsonKey(fromJson: _toDouble)
  double get hourlyRate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get platformFeePercent => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this BookingFinancials to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingFinancials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingFinancialsCopyWith<BookingFinancials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFinancialsCopyWith<$Res> {
  factory $BookingFinancialsCopyWith(
    BookingFinancials value,
    $Res Function(BookingFinancials) then,
  ) = _$BookingFinancialsCopyWithImpl<$Res, BookingFinancials>;
  @useResult
  $Res call({
    @JsonKey(fromJson: _toDouble) double hourlyRate,
    @JsonKey(fromJson: _toDouble) double totalAmount,
    @JsonKey(fromJson: _toDouble) double platformFeePercent,
    String currency,
  });
}

/// @nodoc
class _$BookingFinancialsCopyWithImpl<$Res, $Val extends BookingFinancials>
    implements $BookingFinancialsCopyWith<$Res> {
  _$BookingFinancialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingFinancials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourlyRate = null,
    Object? totalAmount = null,
    Object? platformFeePercent = null,
    Object? currency = null,
  }) {
    return _then(
      _value.copyWith(
            hourlyRate:
                null == hourlyRate
                    ? _value.hourlyRate
                    : hourlyRate // ignore: cast_nullable_to_non_nullable
                        as double,
            totalAmount:
                null == totalAmount
                    ? _value.totalAmount
                    : totalAmount // ignore: cast_nullable_to_non_nullable
                        as double,
            platformFeePercent:
                null == platformFeePercent
                    ? _value.platformFeePercent
                    : platformFeePercent // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingFinancialsImplCopyWith<$Res>
    implements $BookingFinancialsCopyWith<$Res> {
  factory _$$BookingFinancialsImplCopyWith(
    _$BookingFinancialsImpl value,
    $Res Function(_$BookingFinancialsImpl) then,
  ) = __$$BookingFinancialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: _toDouble) double hourlyRate,
    @JsonKey(fromJson: _toDouble) double totalAmount,
    @JsonKey(fromJson: _toDouble) double platformFeePercent,
    String currency,
  });
}

/// @nodoc
class __$$BookingFinancialsImplCopyWithImpl<$Res>
    extends _$BookingFinancialsCopyWithImpl<$Res, _$BookingFinancialsImpl>
    implements _$$BookingFinancialsImplCopyWith<$Res> {
  __$$BookingFinancialsImplCopyWithImpl(
    _$BookingFinancialsImpl _value,
    $Res Function(_$BookingFinancialsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingFinancials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourlyRate = null,
    Object? totalAmount = null,
    Object? platformFeePercent = null,
    Object? currency = null,
  }) {
    return _then(
      _$BookingFinancialsImpl(
        hourlyRate:
            null == hourlyRate
                ? _value.hourlyRate
                : hourlyRate // ignore: cast_nullable_to_non_nullable
                    as double,
        totalAmount:
            null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                    as double,
        platformFeePercent:
            null == platformFeePercent
                ? _value.platformFeePercent
                : platformFeePercent // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingFinancialsImpl implements _BookingFinancials {
  const _$BookingFinancialsImpl({
    @JsonKey(fromJson: _toDouble) required this.hourlyRate,
    @JsonKey(fromJson: _toDouble) required this.totalAmount,
    @JsonKey(fromJson: _toDouble) required this.platformFeePercent,
    required this.currency,
  });

  factory _$BookingFinancialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingFinancialsImplFromJson(json);

  @override
  @JsonKey(fromJson: _toDouble)
  final double hourlyRate;
  @override
  @JsonKey(fromJson: _toDouble)
  final double totalAmount;
  @override
  @JsonKey(fromJson: _toDouble)
  final double platformFeePercent;
  @override
  final String currency;

  @override
  String toString() {
    return 'BookingFinancials(hourlyRate: $hourlyRate, totalAmount: $totalAmount, platformFeePercent: $platformFeePercent, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingFinancialsImpl &&
            (identical(other.hourlyRate, hourlyRate) ||
                other.hourlyRate == hourlyRate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.platformFeePercent, platformFeePercent) ||
                other.platformFeePercent == platformFeePercent) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    hourlyRate,
    totalAmount,
    platformFeePercent,
    currency,
  );

  /// Create a copy of BookingFinancials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingFinancialsImplCopyWith<_$BookingFinancialsImpl> get copyWith =>
      __$$BookingFinancialsImplCopyWithImpl<_$BookingFinancialsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingFinancialsImplToJson(this);
  }
}

abstract class _BookingFinancials implements BookingFinancials {
  const factory _BookingFinancials({
    @JsonKey(fromJson: _toDouble) required final double hourlyRate,
    @JsonKey(fromJson: _toDouble) required final double totalAmount,
    @JsonKey(fromJson: _toDouble) required final double platformFeePercent,
    required final String currency,
  }) = _$BookingFinancialsImpl;

  factory _BookingFinancials.fromJson(Map<String, dynamic> json) =
      _$BookingFinancialsImpl.fromJson;

  @override
  @JsonKey(fromJson: _toDouble)
  double get hourlyRate;
  @override
  @JsonKey(fromJson: _toDouble)
  double get totalAmount;
  @override
  @JsonKey(fromJson: _toDouble)
  double get platformFeePercent;
  @override
  String get currency;

  /// Create a copy of BookingFinancials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingFinancialsImplCopyWith<_$BookingFinancialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingCancellation _$BookingCancellationFromJson(Map<String, dynamic> json) {
  return _BookingCancellation.fromJson(json);
}

/// @nodoc
mixin _$BookingCancellation {
  String? get reason => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;

  /// Serializes this BookingCancellation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingCancellation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCancellationCopyWith<BookingCancellation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCancellationCopyWith<$Res> {
  factory $BookingCancellationCopyWith(
    BookingCancellation value,
    $Res Function(BookingCancellation) then,
  ) = _$BookingCancellationCopyWithImpl<$Res, BookingCancellation>;
  @useResult
  $Res call({String? reason, String? cancelledBy});
}

/// @nodoc
class _$BookingCancellationCopyWithImpl<$Res, $Val extends BookingCancellation>
    implements $BookingCancellationCopyWith<$Res> {
  _$BookingCancellationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingCancellation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = freezed, Object? cancelledBy = freezed}) {
    return _then(
      _value.copyWith(
            reason:
                freezed == reason
                    ? _value.reason
                    : reason // ignore: cast_nullable_to_non_nullable
                        as String?,
            cancelledBy:
                freezed == cancelledBy
                    ? _value.cancelledBy
                    : cancelledBy // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingCancellationImplCopyWith<$Res>
    implements $BookingCancellationCopyWith<$Res> {
  factory _$$BookingCancellationImplCopyWith(
    _$BookingCancellationImpl value,
    $Res Function(_$BookingCancellationImpl) then,
  ) = __$$BookingCancellationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason, String? cancelledBy});
}

/// @nodoc
class __$$BookingCancellationImplCopyWithImpl<$Res>
    extends _$BookingCancellationCopyWithImpl<$Res, _$BookingCancellationImpl>
    implements _$$BookingCancellationImplCopyWith<$Res> {
  __$$BookingCancellationImplCopyWithImpl(
    _$BookingCancellationImpl _value,
    $Res Function(_$BookingCancellationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingCancellation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = freezed, Object? cancelledBy = freezed}) {
    return _then(
      _$BookingCancellationImpl(
        reason:
            freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String?,
        cancelledBy:
            freezed == cancelledBy
                ? _value.cancelledBy
                : cancelledBy // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingCancellationImpl implements _BookingCancellation {
  const _$BookingCancellationImpl({this.reason, this.cancelledBy});

  factory _$BookingCancellationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingCancellationImplFromJson(json);

  @override
  final String? reason;
  @override
  final String? cancelledBy;

  @override
  String toString() {
    return 'BookingCancellation(reason: $reason, cancelledBy: $cancelledBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCancellationImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, cancelledBy);

  /// Create a copy of BookingCancellation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCancellationImplCopyWith<_$BookingCancellationImpl> get copyWith =>
      __$$BookingCancellationImplCopyWithImpl<_$BookingCancellationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingCancellationImplToJson(this);
  }
}

abstract class _BookingCancellation implements BookingCancellation {
  const factory _BookingCancellation({
    final String? reason,
    final String? cancelledBy,
  }) = _$BookingCancellationImpl;

  factory _BookingCancellation.fromJson(Map<String, dynamic> json) =
      _$BookingCancellationImpl.fromJson;

  @override
  String? get reason;
  @override
  String? get cancelledBy;

  /// Create a copy of BookingCancellation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingCancellationImplCopyWith<_$BookingCancellationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingParty _$BookingPartyFromJson(Map<String, dynamic> json) {
  return _BookingParty.fromJson(json);
}

/// @nodoc
mixin _$BookingParty {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;

  /// Serializes this BookingParty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingParty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingPartyCopyWith<BookingParty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPartyCopyWith<$Res> {
  factory $BookingPartyCopyWith(
    BookingParty value,
    $Res Function(BookingParty) then,
  ) = _$BookingPartyCopyWithImpl<$Res, BookingParty>;
  @useResult
  $Res call({int id, String name, String? avatar, String? tier});
}

/// @nodoc
class _$BookingPartyCopyWithImpl<$Res, $Val extends BookingParty>
    implements $BookingPartyCopyWith<$Res> {
  _$BookingPartyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingParty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? tier = freezed,
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
            avatar:
                freezed == avatar
                    ? _value.avatar
                    : avatar // ignore: cast_nullable_to_non_nullable
                        as String?,
            tier:
                freezed == tier
                    ? _value.tier
                    : tier // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingPartyImplCopyWith<$Res>
    implements $BookingPartyCopyWith<$Res> {
  factory _$$BookingPartyImplCopyWith(
    _$BookingPartyImpl value,
    $Res Function(_$BookingPartyImpl) then,
  ) = __$$BookingPartyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? avatar, String? tier});
}

/// @nodoc
class __$$BookingPartyImplCopyWithImpl<$Res>
    extends _$BookingPartyCopyWithImpl<$Res, _$BookingPartyImpl>
    implements _$$BookingPartyImplCopyWith<$Res> {
  __$$BookingPartyImplCopyWithImpl(
    _$BookingPartyImpl _value,
    $Res Function(_$BookingPartyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingParty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? tier = freezed,
  }) {
    return _then(
      _$BookingPartyImpl(
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
        avatar:
            freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        tier:
            freezed == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingPartyImpl implements _BookingParty {
  const _$BookingPartyImpl({
    required this.id,
    required this.name,
    this.avatar,
    this.tier,
  });

  factory _$BookingPartyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingPartyImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final String? tier;

  @override
  String toString() {
    return 'BookingParty(id: $id, name: $name, avatar: $avatar, tier: $tier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPartyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.tier, tier) || other.tier == tier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar, tier);

  /// Create a copy of BookingParty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPartyImplCopyWith<_$BookingPartyImpl> get copyWith =>
      __$$BookingPartyImplCopyWithImpl<_$BookingPartyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingPartyImplToJson(this);
  }
}

abstract class _BookingParty implements BookingParty {
  const factory _BookingParty({
    required final int id,
    required final String name,
    final String? avatar,
    final String? tier,
  }) = _$BookingPartyImpl;

  factory _BookingParty.fromJson(Map<String, dynamic> json) =
      _$BookingPartyImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  String? get tier;

  /// Create a copy of BookingParty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingPartyImplCopyWith<_$BookingPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingEscrow _$BookingEscrowFromJson(Map<String, dynamic> json) {
  return _BookingEscrow.fromJson(json);
}

/// @nodoc
mixin _$BookingEscrow {
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this BookingEscrow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingEscrow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingEscrowCopyWith<BookingEscrow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEscrowCopyWith<$Res> {
  factory $BookingEscrowCopyWith(
    BookingEscrow value,
    $Res Function(BookingEscrow) then,
  ) = _$BookingEscrowCopyWithImpl<$Res, BookingEscrow>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class _$BookingEscrowCopyWithImpl<$Res, $Val extends BookingEscrow>
    implements $BookingEscrowCopyWith<$Res> {
  _$BookingEscrowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingEscrow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed}) {
    return _then(
      _value.copyWith(
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingEscrowImplCopyWith<$Res>
    implements $BookingEscrowCopyWith<$Res> {
  factory _$$BookingEscrowImplCopyWith(
    _$BookingEscrowImpl value,
    $Res Function(_$BookingEscrowImpl) then,
  ) = __$$BookingEscrowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$BookingEscrowImplCopyWithImpl<$Res>
    extends _$BookingEscrowCopyWithImpl<$Res, _$BookingEscrowImpl>
    implements _$$BookingEscrowImplCopyWith<$Res> {
  __$$BookingEscrowImplCopyWithImpl(
    _$BookingEscrowImpl _value,
    $Res Function(_$BookingEscrowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingEscrow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed}) {
    return _then(
      _$BookingEscrowImpl(
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingEscrowImpl implements _BookingEscrow {
  const _$BookingEscrowImpl({this.status});

  factory _$BookingEscrowImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingEscrowImplFromJson(json);

  @override
  final String? status;

  @override
  String toString() {
    return 'BookingEscrow(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingEscrowImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of BookingEscrow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingEscrowImplCopyWith<_$BookingEscrowImpl> get copyWith =>
      __$$BookingEscrowImplCopyWithImpl<_$BookingEscrowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingEscrowImplToJson(this);
  }
}

abstract class _BookingEscrow implements BookingEscrow {
  const factory _BookingEscrow({final String? status}) = _$BookingEscrowImpl;

  factory _BookingEscrow.fromJson(Map<String, dynamic> json) =
      _$BookingEscrowImpl.fromJson;

  @override
  String? get status;

  /// Create a copy of BookingEscrow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingEscrowImplCopyWith<_$BookingEscrowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingPaymentMethodRef _$BookingPaymentMethodRefFromJson(
  Map<String, dynamic> json,
) {
  return _BookingPaymentMethodRef.fromJson(json);
}

/// @nodoc
mixin _$BookingPaymentMethodRef {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this BookingPaymentMethodRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingPaymentMethodRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingPaymentMethodRefCopyWith<BookingPaymentMethodRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPaymentMethodRefCopyWith<$Res> {
  factory $BookingPaymentMethodRefCopyWith(
    BookingPaymentMethodRef value,
    $Res Function(BookingPaymentMethodRef) then,
  ) = _$BookingPaymentMethodRefCopyWithImpl<$Res, BookingPaymentMethodRef>;
  @useResult
  $Res call({int id, String name, String code});
}

/// @nodoc
class _$BookingPaymentMethodRefCopyWithImpl<
  $Res,
  $Val extends BookingPaymentMethodRef
>
    implements $BookingPaymentMethodRefCopyWith<$Res> {
  _$BookingPaymentMethodRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingPaymentMethodRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? code = null}) {
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
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingPaymentMethodRefImplCopyWith<$Res>
    implements $BookingPaymentMethodRefCopyWith<$Res> {
  factory _$$BookingPaymentMethodRefImplCopyWith(
    _$BookingPaymentMethodRefImpl value,
    $Res Function(_$BookingPaymentMethodRefImpl) then,
  ) = __$$BookingPaymentMethodRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code});
}

/// @nodoc
class __$$BookingPaymentMethodRefImplCopyWithImpl<$Res>
    extends
        _$BookingPaymentMethodRefCopyWithImpl<
          $Res,
          _$BookingPaymentMethodRefImpl
        >
    implements _$$BookingPaymentMethodRefImplCopyWith<$Res> {
  __$$BookingPaymentMethodRefImplCopyWithImpl(
    _$BookingPaymentMethodRefImpl _value,
    $Res Function(_$BookingPaymentMethodRefImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingPaymentMethodRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? code = null}) {
    return _then(
      _$BookingPaymentMethodRefImpl(
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
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingPaymentMethodRefImpl implements _BookingPaymentMethodRef {
  const _$BookingPaymentMethodRefImpl({
    required this.id,
    required this.name,
    required this.code,
  });

  factory _$BookingPaymentMethodRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingPaymentMethodRefImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'BookingPaymentMethodRef(id: $id, name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPaymentMethodRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code);

  /// Create a copy of BookingPaymentMethodRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPaymentMethodRefImplCopyWith<_$BookingPaymentMethodRefImpl>
  get copyWith => __$$BookingPaymentMethodRefImplCopyWithImpl<
    _$BookingPaymentMethodRefImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingPaymentMethodRefImplToJson(this);
  }
}

abstract class _BookingPaymentMethodRef implements BookingPaymentMethodRef {
  const factory _BookingPaymentMethodRef({
    required final int id,
    required final String name,
    required final String code,
  }) = _$BookingPaymentMethodRefImpl;

  factory _BookingPaymentMethodRef.fromJson(Map<String, dynamic> json) =
      _$BookingPaymentMethodRefImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;

  /// Create a copy of BookingPaymentMethodRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingPaymentMethodRefImplCopyWith<_$BookingPaymentMethodRefImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  DateTime? get endsAt => throw _privateConstructorUsedError;
  BookingFinancials? get financials => throw _privateConstructorUsedError;
  BookingCancellation? get cancellation => throw _privateConstructorUsedError;
  int? get rescheduledFromBookingId => throw _privateConstructorUsedError;
  BookingParty? get student => throw _privateConstructorUsedError;
  BookingParty? get tutor => throw _privateConstructorUsedError;
  SessionPreview? get session => throw _privateConstructorUsedError;
  BookingEscrow? get escrow => throw _privateConstructorUsedError;
  BookingPaymentMethodRef? get paymentMethod =>
      throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call({
    int id,
    String status,
    String subject,
    String? description,
    DateTime scheduledAt,
    int durationMinutes,
    DateTime? endsAt,
    BookingFinancials? financials,
    BookingCancellation? cancellation,
    int? rescheduledFromBookingId,
    BookingParty? student,
    BookingParty? tutor,
    SessionPreview? session,
    BookingEscrow? escrow,
    BookingPaymentMethodRef? paymentMethod,
    Review? review,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  $BookingFinancialsCopyWith<$Res>? get financials;
  $BookingCancellationCopyWith<$Res>? get cancellation;
  $BookingPartyCopyWith<$Res>? get student;
  $BookingPartyCopyWith<$Res>? get tutor;
  $SessionPreviewCopyWith<$Res>? get session;
  $BookingEscrowCopyWith<$Res>? get escrow;
  $BookingPaymentMethodRefCopyWith<$Res>? get paymentMethod;
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? subject = null,
    Object? description = freezed,
    Object? scheduledAt = null,
    Object? durationMinutes = null,
    Object? endsAt = freezed,
    Object? financials = freezed,
    Object? cancellation = freezed,
    Object? rescheduledFromBookingId = freezed,
    Object? student = freezed,
    Object? tutor = freezed,
    Object? session = freezed,
    Object? escrow = freezed,
    Object? paymentMethod = freezed,
    Object? review = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            subject:
                null == subject
                    ? _value.subject
                    : subject // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            scheduledAt:
                null == scheduledAt
                    ? _value.scheduledAt
                    : scheduledAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            durationMinutes:
                null == durationMinutes
                    ? _value.durationMinutes
                    : durationMinutes // ignore: cast_nullable_to_non_nullable
                        as int,
            endsAt:
                freezed == endsAt
                    ? _value.endsAt
                    : endsAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            financials:
                freezed == financials
                    ? _value.financials
                    : financials // ignore: cast_nullable_to_non_nullable
                        as BookingFinancials?,
            cancellation:
                freezed == cancellation
                    ? _value.cancellation
                    : cancellation // ignore: cast_nullable_to_non_nullable
                        as BookingCancellation?,
            rescheduledFromBookingId:
                freezed == rescheduledFromBookingId
                    ? _value.rescheduledFromBookingId
                    : rescheduledFromBookingId // ignore: cast_nullable_to_non_nullable
                        as int?,
            student:
                freezed == student
                    ? _value.student
                    : student // ignore: cast_nullable_to_non_nullable
                        as BookingParty?,
            tutor:
                freezed == tutor
                    ? _value.tutor
                    : tutor // ignore: cast_nullable_to_non_nullable
                        as BookingParty?,
            session:
                freezed == session
                    ? _value.session
                    : session // ignore: cast_nullable_to_non_nullable
                        as SessionPreview?,
            escrow:
                freezed == escrow
                    ? _value.escrow
                    : escrow // ignore: cast_nullable_to_non_nullable
                        as BookingEscrow?,
            paymentMethod:
                freezed == paymentMethod
                    ? _value.paymentMethod
                    : paymentMethod // ignore: cast_nullable_to_non_nullable
                        as BookingPaymentMethodRef?,
            review:
                freezed == review
                    ? _value.review
                    : review // ignore: cast_nullable_to_non_nullable
                        as Review?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingFinancialsCopyWith<$Res>? get financials {
    if (_value.financials == null) {
      return null;
    }

    return $BookingFinancialsCopyWith<$Res>(_value.financials!, (value) {
      return _then(_value.copyWith(financials: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingCancellationCopyWith<$Res>? get cancellation {
    if (_value.cancellation == null) {
      return null;
    }

    return $BookingCancellationCopyWith<$Res>(_value.cancellation!, (value) {
      return _then(_value.copyWith(cancellation: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingPartyCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $BookingPartyCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingPartyCopyWith<$Res>? get tutor {
    if (_value.tutor == null) {
      return null;
    }

    return $BookingPartyCopyWith<$Res>(_value.tutor!, (value) {
      return _then(_value.copyWith(tutor: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionPreviewCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $SessionPreviewCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingEscrowCopyWith<$Res>? get escrow {
    if (_value.escrow == null) {
      return null;
    }

    return $BookingEscrowCopyWith<$Res>(_value.escrow!, (value) {
      return _then(_value.copyWith(escrow: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingPaymentMethodRefCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $BookingPaymentMethodRefCopyWith<$Res>(_value.paymentMethod!, (
      value,
    ) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
    _$BookingImpl value,
    $Res Function(_$BookingImpl) then,
  ) = __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String status,
    String subject,
    String? description,
    DateTime scheduledAt,
    int durationMinutes,
    DateTime? endsAt,
    BookingFinancials? financials,
    BookingCancellation? cancellation,
    int? rescheduledFromBookingId,
    BookingParty? student,
    BookingParty? tutor,
    SessionPreview? session,
    BookingEscrow? escrow,
    BookingPaymentMethodRef? paymentMethod,
    Review? review,
    DateTime? createdAt,
    DateTime? updatedAt,
  });

  @override
  $BookingFinancialsCopyWith<$Res>? get financials;
  @override
  $BookingCancellationCopyWith<$Res>? get cancellation;
  @override
  $BookingPartyCopyWith<$Res>? get student;
  @override
  $BookingPartyCopyWith<$Res>? get tutor;
  @override
  $SessionPreviewCopyWith<$Res>? get session;
  @override
  $BookingEscrowCopyWith<$Res>? get escrow;
  @override
  $BookingPaymentMethodRefCopyWith<$Res>? get paymentMethod;
  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
    _$BookingImpl _value,
    $Res Function(_$BookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? subject = null,
    Object? description = freezed,
    Object? scheduledAt = null,
    Object? durationMinutes = null,
    Object? endsAt = freezed,
    Object? financials = freezed,
    Object? cancellation = freezed,
    Object? rescheduledFromBookingId = freezed,
    Object? student = freezed,
    Object? tutor = freezed,
    Object? session = freezed,
    Object? escrow = freezed,
    Object? paymentMethod = freezed,
    Object? review = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$BookingImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        subject:
            null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        scheduledAt:
            null == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        durationMinutes:
            null == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                    as int,
        endsAt:
            freezed == endsAt
                ? _value.endsAt
                : endsAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        financials:
            freezed == financials
                ? _value.financials
                : financials // ignore: cast_nullable_to_non_nullable
                    as BookingFinancials?,
        cancellation:
            freezed == cancellation
                ? _value.cancellation
                : cancellation // ignore: cast_nullable_to_non_nullable
                    as BookingCancellation?,
        rescheduledFromBookingId:
            freezed == rescheduledFromBookingId
                ? _value.rescheduledFromBookingId
                : rescheduledFromBookingId // ignore: cast_nullable_to_non_nullable
                    as int?,
        student:
            freezed == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                    as BookingParty?,
        tutor:
            freezed == tutor
                ? _value.tutor
                : tutor // ignore: cast_nullable_to_non_nullable
                    as BookingParty?,
        session:
            freezed == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                    as SessionPreview?,
        escrow:
            freezed == escrow
                ? _value.escrow
                : escrow // ignore: cast_nullable_to_non_nullable
                    as BookingEscrow?,
        paymentMethod:
            freezed == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as BookingPaymentMethodRef?,
        review:
            freezed == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                    as Review?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl({
    required this.id,
    required this.status,
    required this.subject,
    this.description,
    required this.scheduledAt,
    required this.durationMinutes,
    this.endsAt,
    this.financials,
    this.cancellation,
    this.rescheduledFromBookingId,
    this.student,
    this.tutor,
    this.session,
    this.escrow,
    this.paymentMethod,
    this.review,
    this.createdAt,
    this.updatedAt,
  });

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final String subject;
  @override
  final String? description;
  @override
  final DateTime scheduledAt;
  @override
  final int durationMinutes;
  @override
  final DateTime? endsAt;
  @override
  final BookingFinancials? financials;
  @override
  final BookingCancellation? cancellation;
  @override
  final int? rescheduledFromBookingId;
  @override
  final BookingParty? student;
  @override
  final BookingParty? tutor;
  @override
  final SessionPreview? session;
  @override
  final BookingEscrow? escrow;
  @override
  final BookingPaymentMethodRef? paymentMethod;
  @override
  final Review? review;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Booking(id: $id, status: $status, subject: $subject, description: $description, scheduledAt: $scheduledAt, durationMinutes: $durationMinutes, endsAt: $endsAt, financials: $financials, cancellation: $cancellation, rescheduledFromBookingId: $rescheduledFromBookingId, student: $student, tutor: $tutor, session: $session, escrow: $escrow, paymentMethod: $paymentMethod, review: $review, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.cancellation, cancellation) ||
                other.cancellation == cancellation) &&
            (identical(
                  other.rescheduledFromBookingId,
                  rescheduledFromBookingId,
                ) ||
                other.rescheduledFromBookingId == rescheduledFromBookingId) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.tutor, tutor) || other.tutor == tutor) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.escrow, escrow) || other.escrow == escrow) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    subject,
    description,
    scheduledAt,
    durationMinutes,
    endsAt,
    financials,
    cancellation,
    rescheduledFromBookingId,
    student,
    tutor,
    session,
    escrow,
    paymentMethod,
    review,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(this);
  }
}

abstract class _Booking implements Booking {
  const factory _Booking({
    required final int id,
    required final String status,
    required final String subject,
    final String? description,
    required final DateTime scheduledAt,
    required final int durationMinutes,
    final DateTime? endsAt,
    final BookingFinancials? financials,
    final BookingCancellation? cancellation,
    final int? rescheduledFromBookingId,
    final BookingParty? student,
    final BookingParty? tutor,
    final SessionPreview? session,
    final BookingEscrow? escrow,
    final BookingPaymentMethodRef? paymentMethod,
    final Review? review,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  String get subject;
  @override
  String? get description;
  @override
  DateTime get scheduledAt;
  @override
  int get durationMinutes;
  @override
  DateTime? get endsAt;
  @override
  BookingFinancials? get financials;
  @override
  BookingCancellation? get cancellation;
  @override
  int? get rescheduledFromBookingId;
  @override
  BookingParty? get student;
  @override
  BookingParty? get tutor;
  @override
  SessionPreview? get session;
  @override
  BookingEscrow? get escrow;
  @override
  BookingPaymentMethodRef? get paymentMethod;
  @override
  Review? get review;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
