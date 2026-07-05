// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_method.dart';

part 'payment_transaction.freezed.dart';
part 'payment_transaction.g.dart';

/// `amount`/`refund_amount` are `decimal:2`-cast and NOT explicitly floated
/// in `PaymentTransactionResource`, so they arrive as numeric strings.
double _toDouble(dynamic value) => value is String ? double.parse(value) : (value as num).toDouble();
double? _toNullableDouble(dynamic value) {
  if (value == null) return null;
  return value is String ? double.parse(value) : (value as num).toDouble();
}

/// Mirrors `PaymentTransactionResource`. `status` is one of `pending`,
/// `processing`, `completed`, `failed`, `refunded`, `cancelled`.
@freezed
class PaymentTransaction with _$PaymentTransaction {
  const factory PaymentTransaction({
    required int id,
    @JsonKey(fromJson: _toDouble) required double amount,
    required String currency,
    required String status,
    required PaymentMethod paymentMethod,
    String? gatewayTransactionId,
    String? gatewayStatus,
    int? bookingId,
    DateTime? completedAt,
    DateTime? refundedAt,
    @JsonKey(fromJson: _toNullableDouble) double? refundAmount,
    required DateTime createdAt,
  }) = _PaymentTransaction;

  factory PaymentTransaction.fromJson(Map<String, dynamic> json) =>
      _$PaymentTransactionFromJson(json);
}

extension PaymentTransactionX on PaymentTransaction {
  bool get isCompleted => status == 'completed';
  bool get isPending => status == 'pending' || status == 'processing';
}

/// Mirrors the gateway-specific shape returned alongside a deposit/booking
/// payment (`PaymentGatewayInterface::initializePayment`). PayFast and Ozow
/// both use the `requires_redirect` + `redirect_url` + `form_fields` form —
/// the client must auto-submit `form_fields` as a POST to `redirect_url`
/// (it is NOT a plain GET redirect).
@freezed
class PaymentGatewayResponse with _$PaymentGatewayResponse {
  const factory PaymentGatewayResponse({
    bool? requiresRedirect,
    String? redirectUrl,
    Map<String, String>? formFields,
    String? transactionReference,
  }) = _PaymentGatewayResponse;

  factory PaymentGatewayResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentGatewayResponseFromJson(json);
}

/// Combined result of `POST /api/payment/deposit` / `.../booking/{id}`.
@freezed
class PaymentInitiation with _$PaymentInitiation {
  const factory PaymentInitiation({
    required PaymentTransaction transaction,
    required PaymentGatewayResponse gatewayResponse,
  }) = _PaymentInitiation;

  factory PaymentInitiation.fromJson(Map<String, dynamic> json) =>
      _$PaymentInitiationFromJson(json);
}
