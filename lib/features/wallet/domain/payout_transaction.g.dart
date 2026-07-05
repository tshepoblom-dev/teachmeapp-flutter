// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutTransactionImpl _$$PayoutTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$PayoutTransactionImpl(
  id: (json['id'] as num).toInt(),
  amount: (json['amount'] as num).toDouble(),
  status: json['status'] as String,
  reference: json['reference'] as String,
  failureReason: json['failure_reason'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  processedAt:
      json['processed_at'] == null
          ? null
          : DateTime.parse(json['processed_at'] as String),
  account: json['account'] as String?,
);

Map<String, dynamic> _$$PayoutTransactionImplToJson(
  _$PayoutTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'status': instance.status,
  'reference': instance.reference,
  'failure_reason': instance.failureReason,
  'created_at': instance.createdAt.toIso8601String(),
  'processed_at': instance.processedAt?.toIso8601String(),
  'account': instance.account,
};
