import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_account.freezed.dart';
part 'payout_account.g.dart';

/// Mirrors `PayoutAccountResource`. `accountType` is `bank`, `payfast`, or
/// `paypal`. The raw account number is never exposed by the API.
@freezed
class PayoutAccount with _$PayoutAccount {
  const factory PayoutAccount({
    required int id,
    required String accountType,
    required String holderName,
    String? bankName,
    String? branchCode,
    required bool isDefault,
    required bool isVerified,
    String? verifiedAt,
  }) = _PayoutAccount;

  factory PayoutAccount.fromJson(Map<String, dynamic> json) => _$PayoutAccountFromJson(json);
}
