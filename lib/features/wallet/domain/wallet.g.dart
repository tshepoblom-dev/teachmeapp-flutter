// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
  balance: (json['balance'] as num).toDouble(),
  escrowBalance: (json['escrow_balance'] as num).toDouble(),
  currency: json['currency'] as String,
  paymentMethods: _toPaymentMethodListOrNull(json['payment_methods']),
);

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'escrow_balance': instance.escrowBalance,
      'currency': instance.currency,
      'payment_methods': instance.paymentMethods,
    };
