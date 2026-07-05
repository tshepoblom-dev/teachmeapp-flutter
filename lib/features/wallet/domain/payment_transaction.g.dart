// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentTransactionImpl _$$PaymentTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentTransactionImpl(
  id: (json['id'] as num).toInt(),
  amount: _toDouble(json['amount']),
  currency: json['currency'] as String,
  status: json['status'] as String,
  paymentMethod: PaymentMethod.fromJson(
    json['payment_method'] as Map<String, dynamic>,
  ),
  gatewayTransactionId: json['gateway_transaction_id'] as String?,
  gatewayStatus: json['gateway_status'] as String?,
  bookingId: (json['booking_id'] as num?)?.toInt(),
  completedAt:
      json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
  refundedAt:
      json['refunded_at'] == null
          ? null
          : DateTime.parse(json['refunded_at'] as String),
  refundAmount: _toNullableDouble(json['refund_amount']),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$$PaymentTransactionImplToJson(
  _$PaymentTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'currency': instance.currency,
  'status': instance.status,
  'payment_method': instance.paymentMethod,
  'gateway_transaction_id': instance.gatewayTransactionId,
  'gateway_status': instance.gatewayStatus,
  'booking_id': instance.bookingId,
  'completed_at': instance.completedAt?.toIso8601String(),
  'refunded_at': instance.refundedAt?.toIso8601String(),
  'refund_amount': instance.refundAmount,
  'created_at': instance.createdAt.toIso8601String(),
};

_$PaymentGatewayResponseImpl _$$PaymentGatewayResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentGatewayResponseImpl(
  requiresRedirect: json['requires_redirect'] as bool?,
  redirectUrl: json['redirect_url'] as String?,
  formFields: (json['form_fields'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  transactionReference: json['transaction_reference'] as String?,
);

Map<String, dynamic> _$$PaymentGatewayResponseImplToJson(
  _$PaymentGatewayResponseImpl instance,
) => <String, dynamic>{
  'requires_redirect': instance.requiresRedirect,
  'redirect_url': instance.redirectUrl,
  'form_fields': instance.formFields,
  'transaction_reference': instance.transactionReference,
};

_$PaymentInitiationImpl _$$PaymentInitiationImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentInitiationImpl(
  transaction: PaymentTransaction.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
  gatewayResponse: PaymentGatewayResponse.fromJson(
    json['gateway_response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$PaymentInitiationImplToJson(
  _$PaymentInitiationImpl instance,
) => <String, dynamic>{
  'transaction': instance.transaction,
  'gateway_response': instance.gatewayResponse,
};
