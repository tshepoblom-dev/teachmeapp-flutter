// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethod {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String? get paymentFlow => throw _privateConstructorUsedError;
  List<String> get supportedCurrencies => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toNullableDouble)
  double? get minAmount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toNullableDouble)
  double? get maxAmount => throw _privateConstructorUsedError;
  int? get settlementDays => throw _privateConstructorUsedError;
  int? get displayOrder => throw _privateConstructorUsedError;
  bool? get isPreferred => throw _privateConstructorUsedError;
  bool? get isConfigured => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
    PaymentMethod value,
    $Res Function(PaymentMethod) then,
  ) = _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call({
    int id,
    String code,
    String name,
    String? description,
    String? logoUrl,
    bool isActive,
    bool isDefault,
    String? paymentFlow,
    List<String> supportedCurrencies,
    @JsonKey(fromJson: _toNullableDouble) double? minAmount,
    @JsonKey(fromJson: _toNullableDouble) double? maxAmount,
    int? settlementDays,
    int? displayOrder,
    bool? isPreferred,
    bool? isConfigured,
  });
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? isActive = null,
    Object? isDefault = null,
    Object? paymentFlow = freezed,
    Object? supportedCurrencies = null,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? settlementDays = freezed,
    Object? displayOrder = freezed,
    Object? isPreferred = freezed,
    Object? isConfigured = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            logoUrl:
                freezed == logoUrl
                    ? _value.logoUrl
                    : logoUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            isDefault:
                null == isDefault
                    ? _value.isDefault
                    : isDefault // ignore: cast_nullable_to_non_nullable
                        as bool,
            paymentFlow:
                freezed == paymentFlow
                    ? _value.paymentFlow
                    : paymentFlow // ignore: cast_nullable_to_non_nullable
                        as String?,
            supportedCurrencies:
                null == supportedCurrencies
                    ? _value.supportedCurrencies
                    : supportedCurrencies // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            minAmount:
                freezed == minAmount
                    ? _value.minAmount
                    : minAmount // ignore: cast_nullable_to_non_nullable
                        as double?,
            maxAmount:
                freezed == maxAmount
                    ? _value.maxAmount
                    : maxAmount // ignore: cast_nullable_to_non_nullable
                        as double?,
            settlementDays:
                freezed == settlementDays
                    ? _value.settlementDays
                    : settlementDays // ignore: cast_nullable_to_non_nullable
                        as int?,
            displayOrder:
                freezed == displayOrder
                    ? _value.displayOrder
                    : displayOrder // ignore: cast_nullable_to_non_nullable
                        as int?,
            isPreferred:
                freezed == isPreferred
                    ? _value.isPreferred
                    : isPreferred // ignore: cast_nullable_to_non_nullable
                        as bool?,
            isConfigured:
                freezed == isConfigured
                    ? _value.isConfigured
                    : isConfigured // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentMethodImplCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$PaymentMethodImplCopyWith(
    _$PaymentMethodImpl value,
    $Res Function(_$PaymentMethodImpl) then,
  ) = __$$PaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String code,
    String name,
    String? description,
    String? logoUrl,
    bool isActive,
    bool isDefault,
    String? paymentFlow,
    List<String> supportedCurrencies,
    @JsonKey(fromJson: _toNullableDouble) double? minAmount,
    @JsonKey(fromJson: _toNullableDouble) double? maxAmount,
    int? settlementDays,
    int? displayOrder,
    bool? isPreferred,
    bool? isConfigured,
  });
}

/// @nodoc
class __$$PaymentMethodImplCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$PaymentMethodImpl>
    implements _$$PaymentMethodImplCopyWith<$Res> {
  __$$PaymentMethodImplCopyWithImpl(
    _$PaymentMethodImpl _value,
    $Res Function(_$PaymentMethodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? isActive = null,
    Object? isDefault = null,
    Object? paymentFlow = freezed,
    Object? supportedCurrencies = null,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? settlementDays = freezed,
    Object? displayOrder = freezed,
    Object? isPreferred = freezed,
    Object? isConfigured = freezed,
  }) {
    return _then(
      _$PaymentMethodImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        logoUrl:
            freezed == logoUrl
                ? _value.logoUrl
                : logoUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        isDefault:
            null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                    as bool,
        paymentFlow:
            freezed == paymentFlow
                ? _value.paymentFlow
                : paymentFlow // ignore: cast_nullable_to_non_nullable
                    as String?,
        supportedCurrencies:
            null == supportedCurrencies
                ? _value._supportedCurrencies
                : supportedCurrencies // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        minAmount:
            freezed == minAmount
                ? _value.minAmount
                : minAmount // ignore: cast_nullable_to_non_nullable
                    as double?,
        maxAmount:
            freezed == maxAmount
                ? _value.maxAmount
                : maxAmount // ignore: cast_nullable_to_non_nullable
                    as double?,
        settlementDays:
            freezed == settlementDays
                ? _value.settlementDays
                : settlementDays // ignore: cast_nullable_to_non_nullable
                    as int?,
        displayOrder:
            freezed == displayOrder
                ? _value.displayOrder
                : displayOrder // ignore: cast_nullable_to_non_nullable
                    as int?,
        isPreferred:
            freezed == isPreferred
                ? _value.isPreferred
                : isPreferred // ignore: cast_nullable_to_non_nullable
                    as bool?,
        isConfigured:
            freezed == isConfigured
                ? _value.isConfigured
                : isConfigured // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodImpl implements _PaymentMethod {
  const _$PaymentMethodImpl({
    required this.id,
    required this.code,
    required this.name,
    this.description,
    this.logoUrl,
    required this.isActive,
    required this.isDefault,
    this.paymentFlow,
    final List<String> supportedCurrencies = const [],
    @JsonKey(fromJson: _toNullableDouble) this.minAmount,
    @JsonKey(fromJson: _toNullableDouble) this.maxAmount,
    this.settlementDays,
    this.displayOrder,
    this.isPreferred,
    this.isConfigured,
  }) : _supportedCurrencies = supportedCurrencies;

  factory _$PaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? logoUrl;
  @override
  final bool isActive;
  @override
  final bool isDefault;
  @override
  final String? paymentFlow;
  final List<String> _supportedCurrencies;
  @override
  @JsonKey()
  List<String> get supportedCurrencies {
    if (_supportedCurrencies is EqualUnmodifiableListView)
      return _supportedCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedCurrencies);
  }

  @override
  @JsonKey(fromJson: _toNullableDouble)
  final double? minAmount;
  @override
  @JsonKey(fromJson: _toNullableDouble)
  final double? maxAmount;
  @override
  final int? settlementDays;
  @override
  final int? displayOrder;
  @override
  final bool? isPreferred;
  @override
  final bool? isConfigured;

  @override
  String toString() {
    return 'PaymentMethod(id: $id, code: $code, name: $name, description: $description, logoUrl: $logoUrl, isActive: $isActive, isDefault: $isDefault, paymentFlow: $paymentFlow, supportedCurrencies: $supportedCurrencies, minAmount: $minAmount, maxAmount: $maxAmount, settlementDays: $settlementDays, displayOrder: $displayOrder, isPreferred: $isPreferred, isConfigured: $isConfigured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.paymentFlow, paymentFlow) ||
                other.paymentFlow == paymentFlow) &&
            const DeepCollectionEquality().equals(
              other._supportedCurrencies,
              _supportedCurrencies,
            ) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.settlementDays, settlementDays) ||
                other.settlementDays == settlementDays) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.isPreferred, isPreferred) ||
                other.isPreferred == isPreferred) &&
            (identical(other.isConfigured, isConfigured) ||
                other.isConfigured == isConfigured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    code,
    name,
    description,
    logoUrl,
    isActive,
    isDefault,
    paymentFlow,
    const DeepCollectionEquality().hash(_supportedCurrencies),
    minAmount,
    maxAmount,
    settlementDays,
    displayOrder,
    isPreferred,
    isConfigured,
  );

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      __$$PaymentMethodImplCopyWithImpl<_$PaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodImplToJson(this);
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  const factory _PaymentMethod({
    required final int id,
    required final String code,
    required final String name,
    final String? description,
    final String? logoUrl,
    required final bool isActive,
    required final bool isDefault,
    final String? paymentFlow,
    final List<String> supportedCurrencies,
    @JsonKey(fromJson: _toNullableDouble) final double? minAmount,
    @JsonKey(fromJson: _toNullableDouble) final double? maxAmount,
    final int? settlementDays,
    final int? displayOrder,
    final bool? isPreferred,
    final bool? isConfigured,
  }) = _$PaymentMethodImpl;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get logoUrl;
  @override
  bool get isActive;
  @override
  bool get isDefault;
  @override
  String? get paymentFlow;
  @override
  List<String> get supportedCurrencies;
  @override
  @JsonKey(fromJson: _toNullableDouble)
  double? get minAmount;
  @override
  @JsonKey(fromJson: _toNullableDouble)
  double? get maxAmount;
  @override
  int? get settlementDays;
  @override
  int? get displayOrder;
  @override
  bool? get isPreferred;
  @override
  bool? get isConfigured;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
