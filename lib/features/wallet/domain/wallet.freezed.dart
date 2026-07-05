// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
  double get balance => throw _privateConstructorUsedError;
  double get escrowBalance => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<PaymentMethod>? get paymentMethods => throw _privateConstructorUsedError;

  /// Serializes this Wallet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call({
    double balance,
    double escrowBalance,
    String currency,
    List<PaymentMethod>? paymentMethods,
  });
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? escrowBalance = null,
    Object? currency = null,
    Object? paymentMethods = freezed,
  }) {
    return _then(
      _value.copyWith(
            balance:
                null == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as double,
            escrowBalance:
                null == escrowBalance
                    ? _value.escrowBalance
                    : escrowBalance // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            paymentMethods:
                freezed == paymentMethods
                    ? _value.paymentMethods
                    : paymentMethods // ignore: cast_nullable_to_non_nullable
                        as List<PaymentMethod>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletImplCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$WalletImplCopyWith(
    _$WalletImpl value,
    $Res Function(_$WalletImpl) then,
  ) = __$$WalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double balance,
    double escrowBalance,
    String currency,
    List<PaymentMethod>? paymentMethods,
  });
}

/// @nodoc
class __$$WalletImplCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$WalletImpl>
    implements _$$WalletImplCopyWith<$Res> {
  __$$WalletImplCopyWithImpl(
    _$WalletImpl _value,
    $Res Function(_$WalletImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? escrowBalance = null,
    Object? currency = null,
    Object? paymentMethods = freezed,
  }) {
    return _then(
      _$WalletImpl(
        balance:
            null == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as double,
        escrowBalance:
            null == escrowBalance
                ? _value.escrowBalance
                : escrowBalance // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        paymentMethods:
            freezed == paymentMethods
                ? _value._paymentMethods
                : paymentMethods // ignore: cast_nullable_to_non_nullable
                    as List<PaymentMethod>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletImpl implements _Wallet {
  const _$WalletImpl({
    required this.balance,
    required this.escrowBalance,
    required this.currency,
    final List<PaymentMethod>? paymentMethods,
  }) : _paymentMethods = paymentMethods;

  factory _$WalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletImplFromJson(json);

  @override
  final double balance;
  @override
  final double escrowBalance;
  @override
  final String currency;
  final List<PaymentMethod>? _paymentMethods;
  @override
  List<PaymentMethod>? get paymentMethods {
    final value = _paymentMethods;
    if (value == null) return null;
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Wallet(balance: $balance, escrowBalance: $escrowBalance, currency: $currency, paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.escrowBalance, escrowBalance) ||
                other.escrowBalance == escrowBalance) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(
              other._paymentMethods,
              _paymentMethods,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    balance,
    escrowBalance,
    currency,
    const DeepCollectionEquality().hash(_paymentMethods),
  );

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      __$$WalletImplCopyWithImpl<_$WalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletImplToJson(this);
  }
}

abstract class _Wallet implements Wallet {
  const factory _Wallet({
    required final double balance,
    required final double escrowBalance,
    required final String currency,
    final List<PaymentMethod>? paymentMethods,
  }) = _$WalletImpl;

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$WalletImpl.fromJson;

  @override
  double get balance;
  @override
  double get escrowBalance;
  @override
  String get currency;
  @override
  List<PaymentMethod>? get paymentMethods;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
