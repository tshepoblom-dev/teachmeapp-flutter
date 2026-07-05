import 'package:freezed_annotation/freezed_annotation.dart';

import 'kyc_document.dart';

part 'kyc_status.freezed.dart';
part 'kyc_status.g.dart';

/// Mirrors `KycApplicationResource` (the applicant's own view — admin-only
/// fields like `admin_notes`/`reviewed_by`/`applicant` are omitted server-side).
@freezed
class KycApplication with _$KycApplication {
  const factory KycApplication({
    required int id,
    required String applicationType,
    required String status,
    String? submittedAt,
    String? reviewedAt,
    String? rejectionReason,
    int? resubmissionCount,
    @Default([]) List<KycDocument> documents,
    @Default([]) List<String> requiredDocuments,
    @Default([]) List<String> missingDocuments,
    bool? canSubmit,
  }) = _KycApplication;

  factory KycApplication.fromJson(Map<String, dynamic> json) => _$KycApplicationFromJson(json);
}

/// Mirrors `KycController::status`'s `data` object: `{kyc_status,
/// required_docs, missing_docs, application}`. `kycStatus` is one of
/// `not_submitted`, `pending`, `under_review`, `approved`, `rejected`,
/// `resubmitted` (the profile-level status, distinct from `application.status`
/// which is null when no application has ever been started).
@freezed
class KycStatusSummary with _$KycStatusSummary {
  const factory KycStatusSummary({
    required String kycStatus,
    @Default([]) List<String> requiredDocs,
    @Default([]) List<String> missingDocs,
    KycApplication? application,
  }) = _KycStatusSummary;

  factory KycStatusSummary.fromJson(Map<String, dynamic> json) =>
      _$KycStatusSummaryFromJson(json);
}

extension KycStatusSummaryX on KycStatusSummary {
  bool get isApproved => kycStatus == 'approved';
  bool get canApply => application == null || kycStatus == 'rejected';
}
