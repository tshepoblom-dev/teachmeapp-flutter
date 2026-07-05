// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PayoutTransaction _$PayoutTransactionFromJson(Map<String, dynamic> json) {
  return _PayoutTransaction.fromJson(json);
}

/// @nodoc
mixin _$PayoutTransaction {
  int get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String? get failureReason => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  String? get account => throw _privateConstructorUsedError;

  /// Serializes this PayoutTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutTransactionCopyWith<PayoutTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutTransactionCopyWith<$Res> {
  factory $PayoutTransactionCopyWith(
    PayoutTransaction value,
    $Res Function(PayoutTransaction) then,
  ) = _$PayoutTransactionCopyWithImpl<$Res, PayoutTransaction>;
  @useResult
  $Res call({
    int id,
    double amount,
    String status,
    String reference,
    String? failureReason,
    DateTime createdAt,
    DateTime? processedAt,
    String? account,
  });
}

/// @nodoc
class _$PayoutTransactionCopyWithImpl<$Res, $Val extends PayoutTransaction>
    implements $PayoutTransactionCopyWith<$Res> {
  _$PayoutTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? status = null,
    Object? reference = null,
    Object? failureReason = freezed,
    Object? createdAt = null,
    Object? processedAt = freezed,
    Object? account = freezed,
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
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            reference:
                null == reference
                    ? _value.reference
                    : reference // ignore: cast_nullable_to_non_nullable
                        as String,
            failureReason:
                freezed == failureReason
                    ? _value.failureReason
                    : failureReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            processedAt:
                freezed == processedAt
                    ? _value.processedAt
                    : processedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            account:
                freezed == account
                    ? _value.account
                    : account // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PayoutTransactionImplCopyWith<$Res>
    implements $PayoutTransactionCopyWith<$Res> {
  factory _$$PayoutTransactionImplCopyWith(
    _$PayoutTransactionImpl value,
    $Res Function(_$PayoutTransactionImpl) then,
  ) = __$$PayoutTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    double amount,
    String status,
    String reference,
    String? failureReason,
    DateTime createdAt,
    DateTime? processedAt,
    String? account,
  });
}

/// @nodoc
class __$$PayoutTransactionImplCopyWithImpl<$Res>
    extends _$PayoutTransactionCopyWithImpl<$Res, _$PayoutTransactionImpl>
    implements _$$PayoutTransactionImplCopyWith<$Res> {
  __$$PayoutTransactionImplCopyWithImpl(
    _$PayoutTransactionImpl _value,
    $Res Function(_$PayoutTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PayoutTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? status = null,
    Object? reference = null,
    Object? failureReason = freezed,
    Object? createdAt = null,
    Object? processedAt = freezed,
    Object? account = freezed,
  }) {
    return _then(
      _$PayoutTransactionImpl(
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
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        reference:
            null == reference
                ? _value.reference
                : reference // ignore: cast_nullable_to_non_nullable
                    as String,
        failureReason:
            freezed == failureReason
                ? _value.failureReason
                : failureReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        processedAt:
            freezed == processedAt
                ? _value.processedAt
                : processedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        account:
            freezed == account
                ? _value.account
                : account // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutTransactionImpl implements _PayoutTransaction {
  const _$PayoutTransactionImpl({
    required this.id,
    required this.amount,
    required this.status,
    required this.reference,
    this.failureReason,
    required this.createdAt,
    this.processedAt,
    this.account,
  });

  factory _$PayoutTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutTransactionImplFromJson(json);

  @override
  final int id;
  @override
  final double amount;
  @override
  final String status;
  @override
  final String reference;
  @override
  final String? failureReason;
  @override
  final DateTime createdAt;
  @override
  final DateTime? processedAt;
  @override
  final String? account;

  @override
  String toString() {
    return 'PayoutTransaction(id: $id, amount: $amount, status: $status, reference: $reference, failureReason: $failureReason, createdAt: $createdAt, processedAt: $processedAt, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    amount,
    status,
    reference,
    failureReason,
    createdAt,
    processedAt,
    account,
  );

  /// Create a copy of PayoutTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutTransactionImplCopyWith<_$PayoutTransactionImpl> get copyWith =>
      __$$PayoutTransactionImplCopyWithImpl<_$PayoutTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutTransactionImplToJson(this);
  }
}

abstract class _PayoutTransaction implements PayoutTransaction {
  const factory _PayoutTransaction({
    required final int id,
    required final double amount,
    required final String status,
    required final String reference,
    final String? failureReason,
    required final DateTime createdAt,
    final DateTime? processedAt,
    final String? account,
  }) = _$PayoutTransactionImpl;

  factory _PayoutTransaction.fromJson(Map<String, dynamic> json) =
      _$PayoutTransactionImpl.fromJson;

  @override
  int get id;
  @override
  double get amount;
  @override
  String get status;
  @override
  String get reference;
  @override
  String? get failureReason;
  @override
  DateTime get createdAt;
  @override
  DateTime? get processedAt;
  @override
  String? get account;

  /// Create a copy of PayoutTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutTransactionImplCopyWith<_$PayoutTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
