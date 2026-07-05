import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_data.freezed.dart';
part 'reference_data.g.dart';

@freezed
class Institution with _$Institution {
  const factory Institution({
    required int id,
    required String name,
    String? abbreviation,
    String? type,
  }) = _Institution;

  factory Institution.fromJson(Map<String, dynamic> json) => _$InstitutionFromJson(json);
}

@freezed
class Subject with _$Subject {
  const factory Subject({
    required int id,
    required String name,
    String? code,
    String? faculty,
    int? institutionId,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) => _$SubjectFromJson(json);
}
