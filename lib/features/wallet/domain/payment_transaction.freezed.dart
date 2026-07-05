// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentTransaction _$PaymentTransactionFromJson(Map<String, dynamic> json) {
  return _PaymentTransaction.fromJson(json);
}

/// @nodoc
mixin _$PaymentTransaction {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  String? get gatewayTransactionId => throw _privateConstructorUsedError;
  String? get gatewayStatus => throw _privateConstructorUsedError;
  int? get bookingId => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get refundedAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toNullableDouble)
  double? get refundAmount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentTransactionCopyWith<PaymentTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTransactionCopyWith<$Res> {
  factory $PaymentTransactionCopyWith(
    PaymentTransaction value,
    $Res Function(PaymentTransaction) then,
  ) = _$PaymentTransactionCopyWithImpl<$Res, PaymentTransaction>;
  @useResult
  $Res call({
    int id,
    @JsonKey(fromJson: _toDouble) double amount,
    String currency,
    String status,
    PaymentMethod paymentMethod,
    String? gatewayTransactionId,
    String? gatewayStatus,
    int? bookingId,
    DateTime? completedAt,
    DateTime? refundedAt,
    @JsonKey(fromJson: _toNullableDouble) double? refundAmount,
    DateTime createdAt,
  });

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$PaymentTransactionCopyWithImpl<$Res, $Val extends PaymentTransaction>
    implements $PaymentTransactionCopyWith<$Res> {
  _$PaymentTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? gatewayTransactionId = freezed,
    Object? gatewayStatus = freezed,
    Object? bookingId = freezed,
    Object? completedAt = freezed,
    Object? refundedAt = freezed,
    Object? refundAmount = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            paymentMethod:
                null == paymentMethod
                    ? _value.paymentMethod
                    : paymentMethod // ignore: cast_nullable_to_non_nullable
                        as PaymentMethod,
            gatewayTransactionId:
                freezed == gatewayTransactionId
                    ? _value.gatewayTransactionId
                    : gatewayTransactionId // ignore: cast_nullable_to_non_nullable
                        as String?,
            gatewayStatus:
                freezed == gatewayStatus
                    ? _value.gatewayStatus
                    : gatewayStatus // ignore: cast_nullable_to_non_nullable
                        as String?,
            bookingId:
                freezed == bookingId
                    ? _value.bookingId
                    : bookingId // ignore: cast_nullable_to_non_nullable
                        as int?,
            completedAt:
                freezed == completedAt
                    ? _value.completedAt
                    : completedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            refundedAt:
                freezed == refundedAt
                    ? _value.refundedAt
                    : refundedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            refundAmount:
                freezed == refundAmount
                    ? _value.refundAmount
                    : refundAmount // ignore: cast_nullable_to_non_nullable
                        as double?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentTransactionImplCopyWith<$Res>
    implements $PaymentTransactionCopyWith<$Res> {
  factory _$$PaymentTransactionImplCopyWith(
    _$PaymentTransactionImpl value,
    $Res Function(_$PaymentTransactionImpl) then,
  ) = __$$PaymentTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(fromJson: _toDouble) double amount,
    String currency,
    String status,
    PaymentMethod paymentMethod,
    String? gatewayTransactionId,
    String? gatewayStatus,
    int? bookingId,
    DateTime? completedAt,
    DateTime? refundedAt,
    @JsonKey(fromJson: _toNullableDouble) double? refundAmount,
    DateTime createdAt,
  });

  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$PaymentTransactionImplCopyWithImpl<$Res>
    extends _$PaymentTransactionCopyWithImpl<$Res, _$PaymentTransactionImpl>
    implements _$$PaymentTransactionImplCopyWith<$Res> {
  __$$PaymentTransactionImplCopyWithImpl(
    _$PaymentTransactionImpl _value,
    $Res Function(_$PaymentTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? gatewayTransactionId = freezed,
    Object? gatewayStatus = freezed,
    Object? bookingId = freezed,
    Object? completedAt = freezed,
    Object? refundedAt = freezed,
    Object? refundAmount = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$PaymentTransactionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        paymentMethod:
            null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as PaymentMethod,
        gatewayTransactionId:
            freezed == gatewayTransactionId
                ? _value.gatewayTransactionId
                : gatewayTransactionId // ignore: cast_nullable_to_non_nullable
                    as String?,
        gatewayStatus:
            freezed == gatewayStatus
                ? _value.gatewayStatus
                : gatewayStatus // ignore: cast_nullable_to_non_nullable
                    as String?,
        bookingId:
            freezed == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                    as int?,
        completedAt:
            freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        refundedAt:
            freezed == refundedAt
                ? _value.refundedAt
                : refundedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        refundAmount:
            freezed == refundAmount
                ? _value.refundAmount
                : refundAmount // ignore: cast_nullable_to_non_nullable
                    as double?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentTransactionImpl implements _PaymentTransaction {
  const _$PaymentTransactionImpl({
    required this.id,
    @JsonKey(fromJson: _toDouble) required this.amount,
    required this.currency,
    required this.status,
    required this.paymentMethod,
    this.gatewayTransactionId,
    this.gatewayStatus,
    this.bookingId,
    this.completedAt,
    this.refundedAt,
    @JsonKey(fromJson: _toNullableDouble) this.refundAmount,
    required this.createdAt,
  });

  factory _$PaymentTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentTransactionImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(fromJson: _toDouble)
  final double amount;
  @override
  final String currency;
  @override
  final String status;
  @override
  final PaymentMethod paymentMethod;
  @override
  final String? gatewayTransactionId;
  @override
  final String? gatewayStatus;
  @override
  final int? bookingId;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? refundedAt;
  @override
  @JsonKey(fromJson: _toNullableDouble)
  final double? refundAmount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PaymentTransaction(id: $id, amount: $amount, currency: $currency, status: $status, paymentMethod: $paymentMethod, gatewayTransactionId: $gatewayTransactionId, gatewayStatus: $gatewayStatus, bookingId: $bookingId, completedAt: $completedAt, refundedAt: $refundedAt, refundAmount: $refundAmount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.gatewayTransactionId, gatewayTransactionId) ||
                other.gatewayTransactionId == gatewayTransactionId) &&
            (identical(other.gatewayStatus, gatewayStatus) ||
                other.gatewayStatus == gatewayStatus) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.refundedAt, refundedAt) ||
                other.refundedAt == refundedAt) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    amount,
    currency,
    status,
    paymentMethod,
    gatewayTransactionId,
    gatewayStatus,
    bookingId,
    completedAt,
    refundedAt,
    refundAmount,
    createdAt,
  );

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTransactionImplCopyWith<_$PaymentTransactionImpl> get copyWith =>
      __$$PaymentTransactionImplCopyWithImpl<_$PaymentTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentTransactionImplToJson(this);
  }
}

abstract class _PaymentTransaction implements PaymentTransaction {
  const factory _PaymentTransaction({
    required final int id,
    @JsonKey(fromJson: _toDouble) required final double amount,
    required final String currency,
    required final String status,
    required final PaymentMethod paymentMethod,
    final String? gatewayTransactionId,
    final String? gatewayStatus,
    final int? bookingId,
    final DateTime? completedAt,
    final DateTime? refundedAt,
    @JsonKey(fromJson: _toNullableDouble) final double? refundAmount,
    required final DateTime createdAt,
  }) = _$PaymentTransactionImpl;

  factory _PaymentTransaction.fromJson(Map<String, dynamic> json) =
      _$PaymentTransactionImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(fromJson: _toDouble)
  double get amount;
  @override
  String get currency;
  @override
  String get status;
  @override
  PaymentMethod get paymentMethod;
  @override
  String? get gatewayTransactionId;
  @override
  String? get gatewayStatus;
  @override
  int? get bookingId;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get refundedAt;
  @override
  @JsonKey(fromJson: _toNullableDouble)
  double? get refundAmount;
  @override
  DateTime get createdAt;

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentTransactionImplCopyWith<_$PaymentTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentGatewayResponse _$PaymentGatewayResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PaymentGatewayResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentGatewayResponse {
  bool? get requiresRedirect => throw _privateConstructorUsedError;
  String? get redirectUrl => throw _privateConstructorUsedError;
  Map<String, String>? get formFields => throw _privateConstructorUsedError;
  String? get transactionReference => throw _privateConstructorUsedError;

  /// Serializes this PaymentGatewayResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentGatewayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentGatewayResponseCopyWith<PaymentGatewayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentGatewayResponseCopyWith<$Res> {
  factory $PaymentGatewayResponseCopyWith(
    PaymentGatewayResponse value,
    $Res Function(PaymentGatewayResponse) then,
  ) = _$PaymentGatewayResponseCopyWithImpl<$Res, PaymentGatewayResponse>;
  @useResult
  $Res call({
    bool? requiresRedirect,
    String? redirectUrl,
    Map<String, String>? formFields,
    String? transactionReference,
  });
}

/// @nodoc
class _$PaymentGatewayResponseCopyWithImpl<
  $Res,
  $Val extends PaymentGatewayResponse
>
    implements $PaymentGatewayResponseCopyWith<$Res> {
  _$PaymentGatewayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentGatewayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiresRedirect = freezed,
    Object? redirectUrl = freezed,
    Object? formFields = freezed,
    Object? transactionReference = freezed,
  }) {
    return _then(
      _value.copyWith(
            requiresRedirect:
                freezed == requiresRedirect
                    ? _value.requiresRedirect
                    : requiresRedirect // ignore: cast_nullable_to_non_nullable
                        as bool?,
            redirectUrl:
                freezed == redirectUrl
                    ? _value.redirectUrl
                    : redirectUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            formFields:
                freezed == formFields
                    ? _value.formFields
                    : formFields // ignore: cast_nullable_to_non_nullable
                        as Map<String, String>?,
            transactionReference:
                freezed == transactionReference
                    ? _value.transactionReference
                    : transactionReference // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentGatewayResponseImplCopyWith<$Res>
    implements $PaymentGatewayResponseCopyWith<$Res> {
  factory _$$PaymentGatewayResponseImplCopyWith(
    _$PaymentGatewayResponseImpl value,
    $Res Function(_$PaymentGatewayResponseImpl) then,
  ) = __$$PaymentGatewayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool? requiresRedirect,
    String? redirectUrl,
    Map<String, String>? formFields,
    String? transactionReference,
  });
}

/// @nodoc
class __$$PaymentGatewayResponseImplCopyWithImpl<$Res>
    extends
        _$PaymentGatewayResponseCopyWithImpl<$Res, _$PaymentGatewayResponseImpl>
    implements _$$PaymentGatewayResponseImplCopyWith<$Res> {
  __$$PaymentGatewayResponseImplCopyWithImpl(
    _$PaymentGatewayResponseImpl _value,
    $Res Function(_$PaymentGatewayResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentGatewayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiresRedirect = freezed,
    Object? redirectUrl = freezed,
    Object? formFields = freezed,
    Object? transactionReference = freezed,
  }) {
    return _then(
      _$PaymentGatewayResponseImpl(
        requiresRedirect:
            freezed == requiresRedirect
                ? _value.requiresRedirect
                : requiresRedirect // ignore: cast_nullable_to_non_nullable
                    as bool?,
        redirectUrl:
            freezed == redirectUrl
                ? _value.redirectUrl
                : redirectUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        formFields:
            freezed == formFields
                ? _value._formFields
                : formFields // ignore: cast_nullable_to_non_nullable
                    as Map<String, String>?,
        transactionReference:
            freezed == transactionReference
                ? _value.transactionReference
                : transactionReference // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentGatewayResponseImpl implements _PaymentGatewayResponse {
  const _$PaymentGatewayResponseImpl({
    this.requiresRedirect,
    this.redirectUrl,
    final Map<String, String>? formFields,
    this.transactionReference,
  }) : _formFields = formFields;

  factory _$PaymentGatewayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentGatewayResponseImplFromJson(json);

  @override
  final bool? requiresRedirect;
  @override
  final String? redirectUrl;
  final Map<String, String>? _formFields;
  @override
  Map<String, String>? get formFields {
    final value = _formFields;
    if (value == null) return null;
    if (_formFields is EqualUnmodifiableMapView) return _formFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? transactionReference;

  @override
  String toString() {
    return 'PaymentGatewayResponse(requiresRedirect: $requiresRedirect, redirectUrl: $redirectUrl, formFields: $formFields, transactionReference: $transactionReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentGatewayResponseImpl &&
            (identical(other.requiresRedirect, requiresRedirect) ||
                other.requiresRedirect == requiresRedirect) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            const DeepCollectionEquality().equals(
              other._formFields,
              _formFields,
            ) &&
            (identical(other.transactionReference, transactionReference) ||
                other.transactionReference == transactionReference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    requiresRedirect,
    redirectUrl,
    const DeepCollectionEquality().hash(_formFields),
    transactionReference,
  );

  /// Create a copy of PaymentGatewayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentGatewayResponseImplCopyWith<_$PaymentGatewayResponseImpl>
  get copyWith =>
      __$$PaymentGatewayResponseImplCopyWithImpl<_$PaymentGatewayResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentGatewayResponseImplToJson(this);
  }
}

abstract class _PaymentGatewayResponse implements PaymentGatewayResponse {
  const factory _PaymentGatewayResponse({
    final bool? requiresRedirect,
    final String? redirectUrl,
    final Map<String, String>? formFields,
    final String? transactionReference,
  }) = _$PaymentGatewayResponseImpl;

  factory _PaymentGatewayResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentGatewayResponseImpl.fromJson;

  @override
  bool? get requiresRedirect;
  @override
  String? get redirectUrl;
  @override
  Map<String, String>? get formFields;
  @override
  String? get transactionReference;

  /// Create a copy of PaymentGatewayResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentGatewayResponseImplCopyWith<_$PaymentGatewayResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PaymentInitiation _$PaymentInitiationFromJson(Map<String, dynamic> json) {
  return _PaymentInitiation.fromJson(json);
}

/// @nodoc
mixin _$PaymentInitiation {
  PaymentTransaction get transaction => throw _privateConstructorUsedError;
  PaymentGatewayResponse get gatewayResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentInitiation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInitiationCopyWith<PaymentInitiation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInitiationCopyWith<$Res> {
  factory $PaymentInitiationCopyWith(
    PaymentInitiation value,
    $Res Function(PaymentInitiation) then,
  ) = _$PaymentInitiationCopyWithImpl<$Res, PaymentInitiation>;
  @useResult
  $Res call({
    PaymentTransaction transaction,
    PaymentGatewayResponse gatewayResponse,
  });

  $PaymentTransactionCopyWith<$Res> get transaction;
  $PaymentGatewayResponseCopyWith<$Res> get gatewayResponse;
}

/// @nodoc
class _$PaymentInitiationCopyWithImpl<$Res, $Val extends PaymentInitiation>
    implements $PaymentInitiationCopyWith<$Res> {
  _$PaymentInitiationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transaction = null, Object? gatewayResponse = null}) {
    return _then(
      _value.copyWith(
            transaction:
                null == transaction
                    ? _value.transaction
                    : transaction // ignore: cast_nullable_to_non_nullable
                        as PaymentTransaction,
            gatewayResponse:
                null == gatewayResponse
                    ? _value.gatewayResponse
                    : gatewayResponse // ignore: cast_nullable_to_non_nullable
                        as PaymentGatewayResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentTransactionCopyWith<$Res> get transaction {
    return $PaymentTransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentGatewayResponseCopyWith<$Res> get gatewayResponse {
    return $PaymentGatewayResponseCopyWith<$Res>(_value.gatewayResponse, (
      value,
    ) {
      return _then(_value.copyWith(gatewayResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentInitiationImplCopyWith<$Res>
    implements $PaymentInitiationCopyWith<$Res> {
  factory _$$PaymentInitiationImplCopyWith(
    _$PaymentInitiationImpl value,
    $Res Function(_$PaymentInitiationImpl) then,
  ) = __$$PaymentInitiationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PaymentTransaction transaction,
    PaymentGatewayResponse gatewayResponse,
  });

  @override
  $PaymentTransactionCopyWith<$Res> get transaction;
  @override
  $PaymentGatewayResponseCopyWith<$Res> get gatewayResponse;
}

/// @nodoc
class __$$PaymentInitiationImplCopyWithImpl<$Res>
    extends _$PaymentInitiationCopyWithImpl<$Res, _$PaymentInitiationImpl>
    implements _$$PaymentInitiationImplCopyWith<$Res> {
  __$$PaymentInitiationImplCopyWithImpl(
    _$PaymentInitiationImpl _value,
    $Res Function(_$PaymentInitiationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transaction = null, Object? gatewayResponse = null}) {
    return _then(
      _$PaymentInitiationImpl(
        transaction:
            null == transaction
                ? _value.transaction
                : transaction // ignore: cast_nullable_to_non_nullable
                    as PaymentTransaction,
        gatewayResponse:
            null == gatewayResponse
                ? _value.gatewayResponse
                : gatewayResponse // ignore: cast_nullable_to_non_nullable
                    as PaymentGatewayResponse,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInitiationImpl implements _PaymentInitiation {
  const _$PaymentInitiationImpl({
    required this.transaction,
    required this.gatewayResponse,
  });

  factory _$PaymentInitiationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInitiationImplFromJson(json);

  @override
  final PaymentTransaction transaction;
  @override
  final PaymentGatewayResponse gatewayResponse;

  @override
  String toString() {
    return 'PaymentInitiation(transaction: $transaction, gatewayResponse: $gatewayResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInitiationImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.gatewayResponse, gatewayResponse) ||
                other.gatewayResponse == gatewayResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transaction, gatewayResponse);

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInitiationImplCopyWith<_$PaymentInitiationImpl> get copyWith =>
      __$$PaymentInitiationImplCopyWithImpl<_$PaymentInitiationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInitiationImplToJson(this);
  }
}

abstract class _PaymentInitiation implements PaymentInitiation {
  const factory _PaymentInitiation({
    required final PaymentTransaction transaction,
    required final PaymentGatewayResponse gatewayResponse,
  }) = _$PaymentInitiationImpl;

  factory _PaymentInitiation.fromJson(Map<String, dynamic> json) =
      _$PaymentInitiationImpl.fromJson;

  @override
  PaymentTransaction get transaction;
  @override
  PaymentGatewayResponse get gatewayResponse;

  /// Create a copy of PaymentInitiation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInitiationImplCopyWith<_$PaymentInitiationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
