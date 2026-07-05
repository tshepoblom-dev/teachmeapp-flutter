// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycDocumentImpl _$$KycDocumentImplFromJson(Map<String, dynamic> json) =>
    _$KycDocumentImpl(
      id: (json['id'] as num).toInt(),
      documentType: json['document_type'] as String,
      status: json['status'] as String,
      mimeType: json['mime_type'] as String?,
      fileSizeKb: (json['file_size_kb'] as num?)?.toInt(),
      verifiedAt: json['verified_at'] as String?,
      rejectionReason: json['rejection_reason'] as String?,
      uploadedAt: json['uploaded_at'] as String?,
    );

Map<String, dynamic> _$$KycDocumentImplToJson(_$KycDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'document_type': instance.documentType,
      'status': instance.status,
      'mime_type': instance.mimeType,
      'file_size_kb': instance.fileSizeKb,
      'verified_at': instance.verifiedAt,
      'rejection_reason': instance.rejectionReason,
      'uploaded_at': instance.uploadedAt,
    };
