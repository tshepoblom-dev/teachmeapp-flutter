// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'availability_window.dart';

part 'tutor_profile.freezed.dart';
part 'tutor_profile.g.dart';

double _toDouble(dynamic value) => (value as num).toDouble();

@freezed
class SubjectDetailRef with _$SubjectDetailRef {
  const factory SubjectDetailRef({
    required int id,
    required String name,
    String? code,
    String? faculty,
  }) = _SubjectDetailRef;

  factory SubjectDetailRef.fromJson(Map<String, dynamic> json) =>
      _$SubjectDetailRefFromJson(json);
}

@freezed
class InstitutionDetailRef with _$InstitutionDetailRef {
  const factory InstitutionDetailRef({
    required int id,
    required String name,
    String? abbreviation,
    String? type,
  }) = _InstitutionDetailRef;

  factory InstitutionDetailRef.fromJson(Map<String, dynamic> json) =>
      _$InstitutionDetailRefFromJson(json);
}

/// Mirrors `TutorProfileResource`.
@freezed
class TutorProfile with _$TutorProfile {
  const factory TutorProfile({
    required int id,
    required String name,
    String? bio,
    @Default([]) List<SubjectDetailRef> subjects,
    @Default([]) List<InstitutionDetailRef> institutions,
    @JsonKey(fromJson: _toDouble) required double hourlyRate,
    @JsonKey(fromJson: _toDouble) required double averageRating,
    required int totalReviews,
    required int totalSessions,
    String? educationLevel,
    int? yearsOfExperience,
    @Default([]) List<String> teachingSpecializations,
    String? tier,
    String? tierColour,
    required bool isAvailable,
    String? avatarUrl,
  }) = _TutorProfile;

  factory TutorProfile.fromJson(Map<String, dynamic> json) => _$TutorProfileFromJson(json);
}

@freezed
class TutorReviewSummary with _$TutorReviewSummary {
  const factory TutorReviewSummary({
    required String reviewer,
    required int rating,
    String? comment,
    @Default([]) List<String> tags,
    required String date,
  }) = _TutorReviewSummary;

  factory TutorReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$TutorReviewSummaryFromJson(json);
}

/// The full `GET /tutors/{id}` payload: `{tutor, availability, reviews}`.
@freezed
class TutorProfileDetail with _$TutorProfileDetail {
  const factory TutorProfileDetail({
    required TutorProfile tutor,
    @Default([]) List<AvailabilityWindow> availability,
    @Default([]) List<TutorReviewSummary> reviews,
  }) = _TutorProfileDetail;

  factory TutorProfileDetail.fromJson(Map<String, dynamic> json) =>
      _$TutorProfileDetailFromJson(json);
}
