// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectRefImpl _$$SubjectRefImplFromJson(Map<String, dynamic> json) =>
    _$SubjectRefImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$SubjectRefImplToJson(_$SubjectRefImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

_$InstitutionRefImpl _$$InstitutionRefImplFromJson(Map<String, dynamic> json) =>
    _$InstitutionRefImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String?,
    );

Map<String, dynamic> _$$InstitutionRefImplToJson(
  _$InstitutionRefImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'abbreviation': instance.abbreviation,
};

_$TutorSummaryImpl _$$TutorSummaryImplFromJson(Map<String, dynamic> json) =>
    _$TutorSummaryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      bio: json['bio'] as String?,
      subjects:
          (json['subjects'] as List<dynamic>?)
              ?.map((e) => SubjectRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      institutions:
          (json['institutions'] as List<dynamic>?)
              ?.map((e) => InstitutionRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hourlyRate: _toDouble(json['hourly_rate']),
      averageRating: _toDouble(json['average_rating']),
      totalReviews: (json['total_reviews'] as num).toInt(),
      tier: json['tier'] as String?,
      tierColour: json['tier_colour'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$TutorSummaryImplToJson(_$TutorSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      'subjects': instance.subjects,
      'institutions': instance.institutions,
      'hourly_rate': instance.hourlyRate,
      'average_rating': instance.averageRating,
      'total_reviews': instance.totalReviews,
      'tier': instance.tier,
      'tier_colour': instance.tierColour,
      'avatar_url': instance.avatarUrl,
    };
