// Field-to-JSON-key renaming (snake_case) is configured project-wide in
// build.yaml rather than per-class, to avoid freezed + json_serializable
// generating a conflicting pair of top-level fromJson/toJson functions.
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/domain/profile.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Mirrors `UserResource`. Two different response shapes carry this data —
/// `data.user` on login/register, bare `data` on `GET /api/user` — so
/// `AuthRepository` is responsible for unwrapping to the right JSON object
/// before calling `User.fromJson`, not this model.
@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
    required String role,
    required String accountStatus,
    required bool emailVerified,
    String? profilePhotoUrl,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    Profile? profile,
    UserWallet? wallet,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserRoleX on User {
  bool get isStudent => role == 'student';
  bool get isTutor => role == 'tutor';
}
