// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(
  Map<String, dynamic> json,
) => _$ProfileImpl(
  bio: json['bio'] as String?,
  phoneNumber: json['phone_number'] as String?,
  timezone: json['timezone'] as String?,
  languagePreference: json['language_preference'] as String?,
  kycStatus: json['kyc_status'] as String?,
  idVerified: json['id_verified'] as bool? ?? false,
  isAvailable: json['is_available'] as bool? ?? false,
  subjects:
      (json['subjects'] as List<dynamic>?)?.map((e) => e as String).toList(),
  hourlyRate: toDoubleOrNullLenient(json['hourly_rate']),
  averageRating: toDoubleOrNullLenient(json['average_rating']),
  totalReviews: toIntOrNullLenient(json['total_reviews']),
  totalSessionsHosted: toIntOrNullLenient(json['total_sessions_hosted']),
  totalSessionsAttended: toIntOrNullLenient(json['total_sessions_attended']),
  teachingSpecializations:
      (json['teaching_specializations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  educationLevel: json['education_level'] as String?,
  yearsOfExperience: toIntOrNullLenient(json['years_of_experience']),
  tier: json['tier'] as String?,
  tierColour: json['tier_colour'] as String?,
);

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'phone_number': instance.phoneNumber,
      'timezone': instance.timezone,
      'language_preference': instance.languagePreference,
      'kyc_status': instance.kycStatus,
      'id_verified': instance.idVerified,
      'is_available': instance.isAvailable,
      'subjects': instance.subjects,
      'hourly_rate': instance.hourlyRate,
      'average_rating': instance.averageRating,
      'total_reviews': instance.totalReviews,
      'total_sessions_hosted': instance.totalSessionsHosted,
      'total_sessions_attended': instance.totalSessionsAttended,
      'teaching_specializations': instance.teachingSpecializations,
      'education_level': instance.educationLevel,
      'years_of_experience': instance.yearsOfExperience,
      'tier': instance.tier,
      'tier_colour': instance.tierColour,
    };

_$UserWalletImpl _$$UserWalletImplFromJson(Map<String, dynamic> json) =>
    _$UserWalletImpl(
      balance: toDoubleLenient(json['balance']),
      escrowBalance: toDoubleLenient(json['escrow_balance']),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$UserWalletImplToJson(_$UserWalletImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'escrow_balance': instance.escrowBalance,
      'currency': instance.currency,
    };
