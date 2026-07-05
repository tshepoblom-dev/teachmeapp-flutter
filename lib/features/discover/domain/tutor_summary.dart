// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutor_summary.freezed.dart';
part 'tutor_summary.g.dart';

double _toDouble(dynamic value) => (value as num).toDouble();

@freezed
class SubjectRef with _$SubjectRef {
  const factory SubjectRef({required int id, required String name, String? code}) = _SubjectRef;

  factory SubjectRef.fromJson(Map<String, dynamic> json) => _$SubjectRefFromJson(json);
}

@freezed
class InstitutionRef with _$InstitutionRef {
  const factory InstitutionRef({
    required int id,
    required String name,
    String? abbreviation,
  }) = _InstitutionRef;

  factory InstitutionRef.fromJson(Map<String, dynamic> json) => _$InstitutionRefFromJson(json);
}

/// Mirrors `TutorSummaryResource` — used in the discover/search list.
@freezed
class TutorSummary with _$TutorSummary {
  const factory TutorSummary({
    required int id,
    required String name,
    String? bio,
    @Default([]) List<SubjectRef> subjects,
    @Default([]) List<InstitutionRef> institutions,
    @JsonKey(fromJson: _toDouble) required double hourlyRate,
    @JsonKey(fromJson: _toDouble) required double averageRating,
    required int totalReviews,
    String? tier,
    String? tierColour,
    String? avatarUrl,
  }) = _TutorSummary;

  factory TutorSummary.fromJson(Map<String, dynamic> json) => _$TutorSummaryFromJson(json);
}
