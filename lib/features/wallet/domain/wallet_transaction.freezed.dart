// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletTransaction _$WalletTransactionFromJson(Map<String, dynamic> json) {
  return _WalletTransaction.fromJson(json);
}

/// @nodoc
mixin _$WalletTransaction {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get balanceAfter => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WalletTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionCopyWith<WalletTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionCopyWith<$Res> {
  factory $WalletTransactionCopyWith(
    WalletTransaction value,
    $Res Function(WalletTransaction) then,
  ) = _$WalletTransactionCopyWithImpl<$Res, WalletTransaction>;
  @useResult
  $Res call({
    int id,
    String type,
    String direction,
    double amount,
    double balanceAfter,
    String? description,
    String? reference,
    DateTime createdAt,
  });
}

/// @nodoc
class _$WalletTransactionCopyWithImpl<$Res, $Val extends WalletTransaction>
    implements $WalletTransactionCopyWith<$Res> {
  _$WalletTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? direction = null,
    Object? amount = null,
    Object? balanceAfter = null,
    Object? description = freezed,
    Object? reference = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            direction:
                null == direction
                    ? _value.direction
                    : direction // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
            balanceAfter:
                null == balanceAfter
                    ? _value.balanceAfter
                    : balanceAfter // ignore: cast_nullable_to_non_nullable
                        as double,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            reference:
                freezed == reference
                    ? _value.reference
                    : reference // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletTransactionImplCopyWith<$Res>
    implements $WalletTransactionCopyWith<$Res> {
  factory _$$WalletTransactionImplCopyWith(
    _$WalletTransactionImpl value,
    $Res Function(_$WalletTransactionImpl) then,
  ) = __$$WalletTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String type,
    String direction,
    double amount,
    double balanceAfter,
    String? description,
    String? reference,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$WalletTransactionImplCopyWithImpl<$Res>
    extends _$WalletTransactionCopyWithImpl<$Res, _$WalletTransactionImpl>
    implements _$$WalletTransactionImplCopyWith<$Res> {
  __$$WalletTransactionImplCopyWithImpl(
    _$WalletTransactionImpl _value,
    $Res Function(_$WalletTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? direction = null,
    Object? amount = null,
    Object? balanceAfter = null,
    Object? description = freezed,
    Object? reference = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$WalletTransactionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        direction:
            null == direction
                ? _value.direction
                : direction // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
        balanceAfter:
            null == balanceAfter
                ? _value.balanceAfter
                : balanceAfter // ignore: cast_nullable_to_non_nullable
                    as double,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        reference:
            freezed == reference
                ? _value.reference
                : reference // ignore: cast_nullable_to_non_nullable
                    as String?,
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
class _$WalletTransactionImpl implements _WalletTransaction {
  const _$WalletTransactionImpl({
    required this.id,
    required this.type,
    required this.direction,
    required this.amount,
    required this.balanceAfter,
    this.description,
    this.reference,
    required this.createdAt,
  });

  factory _$WalletTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTransactionImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String direction;
  @override
  final double amount;
  @override
  final double balanceAfter;
  @override
  final String? description;
  @override
  final String? reference;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'WalletTransaction(id: $id, type: $type, direction: $direction, amount: $amount, balanceAfter: $balanceAfter, description: $description, reference: $reference, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    direction,
    amount,
    balanceAfter,
    description,
    reference,
    createdAt,
  );

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionImplCopyWith<_$WalletTransactionImpl> get copyWith =>
      __$$WalletTransactionImplCopyWithImpl<_$WalletTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTransactionImplToJson(this);
  }
}

abstract class _WalletTransaction implements WalletTransaction {
  const factory _WalletTransaction({
    required final int id,
    required final String type,
    required final String direction,
    required final double amount,
    required final double balanceAfter,
    final String? description,
    final String? reference,
    required final DateTime createdAt,
  }) = _$WalletTransactionImpl;

  factory _WalletTransaction.fromJson(Map<String, dynamic> json) =
      _$WalletTransactionImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get direction;
  @override
  double get amount;
  @override
  double get balanceAfter;
  @override
  String? get description;
  @override
  String? get reference;
  @override
  DateTime get createdAt;

  /// Create a copy of WalletTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionImplCopyWith<_$WalletTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
