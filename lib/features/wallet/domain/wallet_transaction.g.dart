// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletTransactionImpl _$$WalletTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$WalletTransactionImpl(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  direction: json['direction'] as String,
  amount: (json['amount'] as num).toDouble(),
  balanceAfter: (json['balance_after'] as num).toDouble(),
  description: json['description'] as String?,
  reference: json['reference'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$$WalletTransactionImplToJson(
  _$WalletTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'direction': instance.direction,
  'amount': instance.amount,
  'balance_after': instance.balanceAfter,
  'description': instance.description,
  'reference': instance.reference,
  'created_at': instance.createdAt.toIso8601String(),
};
