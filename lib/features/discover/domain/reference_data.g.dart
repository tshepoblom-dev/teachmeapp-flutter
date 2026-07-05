// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstitutionImpl _$$InstitutionImplFromJson(Map<String, dynamic> json) =>
    _$InstitutionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$InstitutionImplToJson(_$InstitutionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'type': instance.type,
    };

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String?,
      faculty: json['faculty'] as String?,
      institutionId: (json['institution_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'faculty': instance.faculty,
      'institution_id': instance.institutionId,
    };
