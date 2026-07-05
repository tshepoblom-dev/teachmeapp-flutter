import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/paginated_response.dart';
import '../domain/availability_window.dart';
import '../domain/discover_filters.dart';
import '../domain/reference_data.dart';
import '../domain/tutor_profile.dart';
import '../domain/tutor_summary.dart';
import 'discover_api.dart';

class DiscoverRepository {
  DiscoverRepository(this._api);

  final DiscoverApi _api;

  Future<PaginatedResponse<TutorSummary>> searchTutors(
    DiscoverFilters filters, {
    int page = 1,
  }) async {
    try {
      final body = await _api.searchTutors(filters, page: page);
      final paginator = body['data'] as Map<String, dynamic>;
      return PaginatedResponse<TutorSummary>.fromJson(paginator, TutorSummary.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<TutorProfileDetail> fetchTutorProfile(int tutorId) async {
    try {
      final body = await _api.fetchTutorProfile(tutorId);
      return TutorProfileDetail.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<List<AvailabilityWindow>> fetchTutorAvailability(int tutorId) async {
    try {
      final body = await _api.fetchTutorAvailability(tutorId);
      final items = (body['data'] as List).cast<Map<String, dynamic>>();
      return items.map(AvailabilityWindow.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<List<Institution>> fetchInstitutions() async {
    try {
      final body = await _api.fetchInstitutions();
      final wrapper = body['data'] as Map<String, dynamic>;
      final items = (wrapper['data'] as List).cast<Map<String, dynamic>>();
      return items.map(Institution.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<List<Subject>> fetchSubjects({int? institutionId}) async {
    try {
      final body = await _api.fetchSubjects(institutionId: institutionId);
      final wrapper = body['data'] as Map<String, dynamic>;
      final items = (wrapper['data'] as List).cast<Map<String, dynamic>>();
      return items.map(Subject.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
