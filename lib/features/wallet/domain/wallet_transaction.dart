import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transaction.freezed.dart';
part 'wallet_transaction.g.dart';

/// Mirrors `WalletTransactionResource`. `type` is one of `deposit`,
/// `withdrawal`, `escrow_hold`, `escrow_release`, `escrow_refund`,
/// `platform_fee`, `payout`, `refund`. `direction` is `in` or `out`.
@freezed
class WalletTransaction with _$WalletTransaction {
  const factory WalletTransaction({
    required int id,
    required String type,
    required String direction,
    required double amount,
    required double balanceAfter,
    String? description,
    String? reference,
    required DateTime createdAt,
  }) = _WalletTransaction;

  factory WalletTransaction.fromJson(Map<String, dynamic> json) =>
      _$WalletTransactionFromJson(json);
}

extension WalletTransactionX on WalletTransaction {
  bool get isCredit => direction == 'in';
}
