import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../domain/kyc_status.dart';
import 'kyc_api.dart';

class KycRepository {
  KycRepository(this._api);

  final KycApi _api;

  Future<KycStatusSummary> fetchStatus() async {
    try {
      final body = await _api.fetchStatus();
      return KycStatusSummary.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<KycApplication> apply(String applicationType) async {
    try {
      final body = await _api.apply(applicationType);
      return KycApplication.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// The upload response is a flat `{document_id,document_type,status,...}`
  /// map distinct from `KycDocumentResource`'s shape, and callers always
  /// need the refreshed `missing_docs`/`can_submit` afterwards anyway, so
  /// this just confirms success and lets the caller re-fetch status.
  Future<void> uploadDocument({required File file, required String documentType}) async {
    try {
      await _api.uploadDocument(file: file, documentType: documentType);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> deleteDocument(int documentId) async {
    try {
      await _api.deleteDocument(documentId);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
