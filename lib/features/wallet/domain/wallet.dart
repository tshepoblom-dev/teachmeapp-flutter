import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_method.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

/// Mirrors `GET /api/wallet`'s `data` object. `paymentMethods` is only
/// present in the response for students (see `WalletController::index`).
@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    required double balance,
    required double escrowBalance,
    required String currency,
    List<PaymentMethod>? paymentMethods,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
