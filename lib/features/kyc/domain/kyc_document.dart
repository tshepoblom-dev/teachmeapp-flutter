import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_document.freezed.dart';
part 'kyc_document.g.dart';

/// Mirrors `KycDocumentResource`. `documentType` is one of `national_id`,
/// `passport`, `drivers_licence`, `selfie`, `proof_of_qualification`,
/// `proof_of_address`, `other`.
@freezed
class KycDocument with _$KycDocument {
  const factory KycDocument({
    required int id,
    required String documentType,
    required String status,
    String? mimeType,
    int? fileSizeKb,
    String? verifiedAt,
    String? rejectionReason,
    String? uploadedAt,
  }) = _KycDocument;

  factory KycDocument.fromJson(Map<String, dynamic> json) => _$KycDocumentFromJson(json);
}
