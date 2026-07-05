import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';
import '../domain/discover_filters.dart';

class DiscoverApi {
  DiscoverApi(this._dio);

  final Dio _dio;

  /// `GET /api/tutors` — note the response is double-wrapped:
  /// `{success, message, data: {data: [...], links, meta}}`.
  Future<Map<String, dynamic>> searchTutors(DiscoverFilters filters, {int page = 1}) async {
    final response = await _dio.get(ApiEndpoints.tutors, queryParameters: {
      'page': page,
      if (filters.search != null && filters.search!.isNotEmpty) 'search': filters.search,
      if (filters.institutionId != null) 'institution_id': filters.institutionId,
      if (filters.subjectId != null) 'subject_id': filters.subjectId,
      if (filters.maxRate != null) 'max_rate': filters.maxRate,
      if (filters.minRating != null) 'min_rating': filters.minRating,
      'sort': filters.sort,
    });
    return response.data as Map<String, dynamic>;
  }

  /// `GET /api/tutors/{id}` — `{success, message, data: {tutor, availability, reviews}}`.
  Future<Map<String, dynamic>> fetchTutorProfile(int tutorId) async {
    final response = await _dio.get(ApiEndpoints.tutorProfile(tutorId));
    return response.data as Map<String, dynamic>;
  }

  /// `GET /api/tutors/{id}/availability` — raw weekly windows, not
  /// conflict-checked against existing bookings (see plan: v1 backend gap).
  Future<Map<String, dynamic>> fetchTutorAvailability(int tutorId) async {
    final response = await _dio.get(ApiEndpoints.tutorPublicAvailability(tutorId));
    return response.data as Map<String, dynamic>;
  }

  /// `GET /api/institutions` — `{success, message, data: {data: [...]}}`.
  Future<Map<String, dynamic>> fetchInstitutions() async {
    final response = await _dio.get(ApiEndpoints.institutions);
    return response.data as Map<String, dynamic>;
  }

  /// `GET /api/subjects` — `{success, message, data: {data: [...]}}`.
  Future<Map<String, dynamic>> fetchSubjects({int? institutionId}) async {
    final response = await _dio.get(ApiEndpoints.subjects, queryParameters: {
      if (institutionId != null) 'institution_id': institutionId,
    });
    return response.data as Map<String, dynamic>;
  }
}
