import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

/// Raw Dio calls for the KYC domain. `KycController` uses its own private
/// `success()`/`error()` helpers (not the shared `ApiResponse` trait), but
/// the resulting shape is identical: `{success,message,data}`, single-wrapped
/// throughout — no double-wrap on `status` despite it nesting an `application`.
class KycApi {
  KycApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> fetchStatus() async {
    final response = await _dio.get(ApiEndpoints.kycStatus);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> apply(String applicationType) async {
    final response = await _dio.post(ApiEndpoints.kycApply, data: {
      'application_type': applicationType,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> uploadDocument({
    required File file,
    required String documentType,
  }) async {
    final formData = FormData.fromMap({
      'document_type': documentType,
      'file': await MultipartFile.fromFile(file.path),
    });
    final response = await _dio.post(ApiEndpoints.kycDocuments, data: formData);
    return response.data as Map<String, dynamic>;
  }

  Future<void> deleteDocument(int documentId) async {
    await _dio.delete(ApiEndpoints.kycDocument(documentId));
  }
}
