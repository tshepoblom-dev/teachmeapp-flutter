import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

class AvailabilityApi {
  AvailabilityApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> fetchSlots() async {
    final response = await _dio.get(ApiEndpoints.tutorAvailability);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> createSlot(Map<String, dynamic> payload) async {
    final response = await _dio.post(ApiEndpoints.tutorAvailability, data: payload);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> updateSlot(int slotId, Map<String, dynamic> payload) async {
    final response = await _dio.put(ApiEndpoints.tutorAvailabilitySlot(slotId), data: payload);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> toggleSlot(int slotId) async {
    final response = await _dio.patch(ApiEndpoints.tutorAvailabilitySlotToggle(slotId));
    return response.data as Map<String, dynamic>;
  }

  Future<void> deleteSlot(int slotId) async {
    await _dio.delete(ApiEndpoints.tutorAvailabilitySlot(slotId));
  }
}
