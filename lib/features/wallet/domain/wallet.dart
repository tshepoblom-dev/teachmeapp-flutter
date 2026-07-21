// ignore_for_file: invalid_annotation_target
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_method.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

/// `payment_methods` is sometimes emitted as a JSON-encoded string (or an
/// empty string) rather than a decoded array, mirroring the Laravel-cast
/// quirks handled in `payment_method.dart`.
List<PaymentMethod>? _toPaymentMethodListOrNull(dynamic value) {
  if (value == null || value == '') return null;
  final list = value is String ? jsonDecode(value) as List : value as List;
  return list.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>)).toList();
}

/// Mirrors `GET /api/wallet`'s `data` object. `paymentMethods` is only
/// present in the response for students (see `WalletController::index`).
@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    required double balance,
    required double escrowBalance,
    required String currency,
    @JsonKey(fromJson: _toPaymentMethodListOrNull) List<PaymentMethod>? paymentMethods,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
