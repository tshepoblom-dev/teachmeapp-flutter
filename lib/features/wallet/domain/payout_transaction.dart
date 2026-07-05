import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_transaction.freezed.dart';
part 'payout_transaction.g.dart';

/// Mirrors `PayoutTransactionResource`. `status` is one of `pending`,
/// `processing`, `completed`, `failed`, `cancelled`.
@freezed
class PayoutTransaction with _$PayoutTransaction {
  const factory PayoutTransaction({
    required int id,
    required double amount,
    required String status,
    required String reference,
    String? failureReason,
    required DateTime createdAt,
    DateTime? processedAt,
    String? account,
  }) = _PayoutTransaction;

  factory PayoutTransaction.fromJson(Map<String, dynamic> json) =>
      _$PayoutTransactionFromJson(json);
}

extension PayoutTransactionX on PayoutTransaction {
  bool get isCancellable => status == 'pending';
}
