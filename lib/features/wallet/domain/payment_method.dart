// ignore_for_file: invalid_annotation_target
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

/// `min_amount`/`max_amount` are `decimal:2`-cast on the Laravel side and NOT
/// explicitly floated in `PaymentMethodResource`, so they arrive as numeric
/// strings (e.g. `"5.00"`) rather than JSON numbers.
double? _toNullableDouble(dynamic value) {
  if (value == null) return null;
  if (value is String) return double.parse(value);
  return (value as num).toDouble();
}

/// `supported_currencies` is sometimes emitted as a JSON-encoded string (or
/// an empty string) rather than a decoded array, mirroring the same
/// Laravel-cast quirk as [_toNullableDouble].
List<String> _toStringList(dynamic value) {
  if (value == null || value == '') return const [];
  if (value is String) return (jsonDecode(value) as List).map((e) => e as String).toList();
  return (value as List).map((e) => e as String).toList();
}

/// Mirrors `PaymentMethodResource`. `paymentFlow` is one of `redirect`,
/// `modal`, `direct`, `wallet`.
@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required int id,
    required String code,
    required String name,
    String? description,
    String? logoUrl,
    required bool isActive,
    required bool isDefault,
    String? paymentFlow,
    @JsonKey(fromJson: _toStringList) @Default([]) List<String> supportedCurrencies,
    @JsonKey(fromJson: _toNullableDouble) double? minAmount,
    @JsonKey(fromJson: _toNullableDouble) double? maxAmount,
    int? settlementDays,
    int? displayOrder,
    bool? isPreferred,
    bool? isConfigured,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);
}

extension PaymentMethodX on PaymentMethod {
  bool get isWalletFlow => paymentFlow == 'wallet';
  bool get isRedirectFlow => paymentFlow == 'redirect';
}
