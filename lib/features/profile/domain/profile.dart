// Field-to-JSON-key renaming (snake_case) is configured project-wide in
// build.yaml rather than per-class, to avoid freezed + json_serializable
// generating a conflicting pair of top-level fromJson/toJson functions.
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/json_converters.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

/// Mirrors `ProfileResource` — common fields apply to both roles, the
/// tutor-only fields (hourlyRate, subjects, tier, ...) are simply absent/null
/// for students.
@freezed
class Profile with _$Profile {
  const factory Profile({
    String? bio,
    String? phoneNumber,
    String? timezone,
    String? languagePreference,
    String? kycStatus,
    @Default(false) bool idVerified,
    @Default(false) bool isAvailable,
    List<String>? subjects,
    @JsonKey(fromJson: toDoubleOrNullLenient) double? hourlyRate,
    @JsonKey(fromJson: toDoubleOrNullLenient) double? averageRating,
    @JsonKey(fromJson: toIntOrNullLenient) int? totalReviews,
    @JsonKey(fromJson: toIntOrNullLenient) int? totalSessionsHosted,
    @JsonKey(fromJson: toIntOrNullLenient) int? totalSessionsAttended,
    List<String>? teachingSpecializations,
    String? educationLevel,
    @JsonKey(fromJson: toIntOrNullLenient) int? yearsOfExperience,
    String? tier,
    String? tierColour,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}

@freezed
class UserWallet with _$UserWallet {
  const factory UserWallet({
    @JsonKey(fromJson: toDoubleLenient) required double balance,
    @JsonKey(fromJson: toDoubleLenient) required double escrowBalance,
    required String currency,
  }) = _UserWallet;

  factory UserWallet.fromJson(Map<String, dynamic> json) => _$UserWalletFromJson(json);
}
