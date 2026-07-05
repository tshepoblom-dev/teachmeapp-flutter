// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycApplicationImpl _$$KycApplicationImplFromJson(Map<String, dynamic> json) =>
    _$KycApplicationImpl(
      id: (json['id'] as num).toInt(),
      applicationType: json['application_type'] as String,
      status: json['status'] as String,
      submittedAt: json['submitted_at'] as String?,
      reviewedAt: json['reviewed_at'] as String?,
      rejectionReason: json['rejection_reason'] as String?,
      resubmissionCount: (json['resubmission_count'] as num?)?.toInt(),
      documents:
          (json['documents'] as List<dynamic>?)
              ?.map((e) => KycDocument.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      requiredDocuments:
          (json['required_documents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      missingDocuments:
          (json['missing_documents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      canSubmit: json['can_submit'] as bool?,
    );

Map<String, dynamic> _$$KycApplicationImplToJson(
  _$KycApplicationImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'application_type': instance.applicationType,
  'status': instance.status,
  'submitted_at': instance.submittedAt,
  'reviewed_at': instance.reviewedAt,
  'rejection_reason': instance.rejectionReason,
  'resubmission_count': instance.resubmissionCount,
  'documents': instance.documents,
  'required_documents': instance.requiredDocuments,
  'missing_documents': instance.missingDocuments,
  'can_submit': instance.canSubmit,
};

_$KycStatusSummaryImpl _$$KycStatusSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$KycStatusSummaryImpl(
  kycStatus: json['kyc_status'] as String,
  requiredDocs:
      (json['required_docs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  missingDocs:
      (json['missing_docs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  application:
      json['application'] == null
          ? null
          : KycApplication.fromJson(
            json['application'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$KycStatusSummaryImplToJson(
  _$KycStatusSummaryImpl instance,
) => <String, dynamic>{
  'kyc_status': instance.kycStatus,
  'required_docs': instance.requiredDocs,
  'missing_docs': instance.missingDocs,
  'application': instance.application,
};
