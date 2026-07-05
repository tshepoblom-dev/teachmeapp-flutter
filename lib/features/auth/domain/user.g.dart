// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  accountStatus: json['account_status'] as String,
  emailVerified: json['email_verified'] as bool,
  profilePhotoUrl: json['profile_photo_url'] as String?,
  lastLoginAt:
      json['last_login_at'] == null
          ? null
          : DateTime.parse(json['last_login_at'] as String),
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  profile:
      json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  wallet:
      json['wallet'] == null
          ? null
          : UserWallet.fromJson(json['wallet'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'account_status': instance.accountStatus,
      'email_verified': instance.emailVerified,
      'profile_photo_url': instance.profilePhotoUrl,
      'last_login_at': instance.lastLoginAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'profile': instance.profile,
      'wallet': instance.wallet,
    };
