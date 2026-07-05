// Field-to-JSON-key renaming (snake_case) is configured project-wide in
// build.yaml rather than per-class, to avoid freezed + json_serializable
// generating a conflicting pair of top-level fromJson/toJson functions.
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

double _toDouble(dynamic value) => (value as num).toDouble();
double? _toDoubleOrNull(dynamic value) => value == null ? null : (value as num).toDouble();

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
    @JsonKey(fromJson: _toDoubleOrNull) double? hourlyRate,
    @JsonKey(fromJson: _toDoubleOrNull) double? averageRating,
    int? totalReviews,
    int? totalSessionsHosted,
    int? totalSessionsAttended,
    List<String>? teachingSpecializations,
    String? educationLevel,
    int? yearsOfExperience,
    String? tier,
    String? tierColour,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}

@freezed
class UserWallet with _$UserWallet {
  const factory UserWallet({
    @JsonKey(fromJson: _toDouble) required double balance,
    @JsonKey(fromJson: _toDouble) required double escrowBalance,
    required String currency,
  }) = _UserWallet;

  factory UserWallet.fromJson(Map<String, dynamic> json) => _$UserWalletFromJson(json);
}
