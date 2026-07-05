// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectDetailRefImpl _$$SubjectDetailRefImplFromJson(
  Map<String, dynamic> json,
) => _$SubjectDetailRefImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  code: json['code'] as String?,
  faculty: json['faculty'] as String?,
);

Map<String, dynamic> _$$SubjectDetailRefImplToJson(
  _$SubjectDetailRefImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
  'faculty': instance.faculty,
};

_$InstitutionDetailRefImpl _$$InstitutionDetailRefImplFromJson(
  Map<String, dynamic> json,
) => _$InstitutionDetailRefImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  abbreviation: json['abbreviation'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$$InstitutionDetailRefImplToJson(
  _$InstitutionDetailRefImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'abbreviation': instance.abbreviation,
  'type': instance.type,
};

_$TutorProfileImpl _$$TutorProfileImplFromJson(Map<String, dynamic> json) =>
    _$TutorProfileImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      bio: json['bio'] as String?,
      subjects:
          (json['subjects'] as List<dynamic>?)
              ?.map((e) => SubjectDetailRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      institutions:
          (json['institutions'] as List<dynamic>?)
              ?.map(
                (e) => InstitutionDetailRef.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      hourlyRate: _toDouble(json['hourly_rate']),
      averageRating: _toDouble(json['average_rating']),
      totalReviews: (json['total_reviews'] as num).toInt(),
      totalSessions: (json['total_sessions'] as num).toInt(),
      educationLevel: json['education_level'] as String?,
      yearsOfExperience: (json['years_of_experience'] as num?)?.toInt(),
      teachingSpecializations:
          (json['teaching_specializations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tier: json['tier'] as String?,
      tierColour: json['tier_colour'] as String?,
      isAvailable: json['is_available'] as bool,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$TutorProfileImplToJson(_$TutorProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      'subjects': instance.subjects,
      'institutions': instance.institutions,
      'hourly_rate': instance.hourlyRate,
      'average_rating': instance.averageRating,
      'total_reviews': instance.totalReviews,
      'total_sessions': instance.totalSessions,
      'education_level': instance.educationLevel,
      'years_of_experience': instance.yearsOfExperience,
      'teaching_specializations': instance.teachingSpecializations,
      'tier': instance.tier,
      'tier_colour': instance.tierColour,
      'is_available': instance.isAvailable,
      'avatar_url': instance.avatarUrl,
    };

_$TutorReviewSummaryImpl _$$TutorReviewSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$TutorReviewSummaryImpl(
  reviewer: json['reviewer'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  date: json['date'] as String,
);

Map<String, dynamic> _$$TutorReviewSummaryImplToJson(
  _$TutorReviewSummaryImpl instance,
) => <String, dynamic>{
  'reviewer': instance.reviewer,
  'rating': instance.rating,
  'comment': instance.comment,
  'tags': instance.tags,
  'date': instance.date,
};

_$TutorProfileDetailImpl _$$TutorProfileDetailImplFromJson(
  Map<String, dynamic> json,
) => _$TutorProfileDetailImpl(
  tutor: TutorProfile.fromJson(json['tutor'] as Map<String, dynamic>),
  availability:
      (json['availability'] as List<dynamic>?)
          ?.map((e) => AvailabilityWindow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => TutorReviewSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$TutorProfileDetailImplToJson(
  _$TutorProfileDetailImpl instance,
) => <String, dynamic>{
  'tutor': instance.tutor,
  'availability': instance.availability,
  'reviews': instance.reviews,
};
