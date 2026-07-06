import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../domain/availability_slot.dart';
import 'availability_api.dart';

class AvailabilityRepository {
  AvailabilityRepository(this._api);

  final AvailabilityApi _api;

  /// `GET /api/tutor/availability` — single-wrapped:
  /// `{success,message,data:[...]}`.
  Future<List<AvailabilitySlot>> fetchSlots() async {
    try {
      final body = await _api.fetchSlots();
      final items = (body['data'] as List).cast<Map<String, dynamic>>();
      return items.map(AvailabilitySlot.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<AvailabilitySlot> createSlot({
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    bool isRecurring = true,
    String? validFrom,
    String? validUntil,
  }) async {
    try {
      final body = await _api.createSlot({
        'day_of_week': dayOfWeek,
        'start_time': startTime,
        'end_time': endTime,
        'is_recurring': isRecurring,
        if (validFrom != null) 'valid_from': validFrom,
        if (validUntil != null) 'valid_until': validUntil,
      });
      return AvailabilitySlot.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<AvailabilitySlot> updateSlot(
    int slotId, {
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    bool isRecurring = true,
    String? validFrom,
    String? validUntil,
  }) async {
    try {
      final body = await _api.updateSlot(slotId, {
        'day_of_week': dayOfWeek,
        'start_time': startTime,
        'end_time': endTime,
        'is_recurring': isRecurring,
        if (validFrom != null) 'valid_from': validFrom,
        if (validUntil != null) 'valid_until': validUntil,
      });
      return AvailabilitySlot.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<AvailabilitySlot> toggleSlot(int slotId) async {
    try {
      final body = await _api.toggleSlot(slotId);
      return AvailabilitySlot.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<void> deleteSlot(int slotId) async {
    try {
      await _api.deleteSlot(slotId);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
