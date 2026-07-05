import 'package:dio/dio.dart';

import '../../../core/network/api_endpoints.dart';

/// Raw Dio calls for the booking domain. Response envelopes are NOT
/// consistent across these endpoints — see comments per method, verified
/// against the live `BookingController`/`ReviewController` source:
///   - `index`/`upcoming`/`pendingRequests` return a bare Laravel resource
///     (collection) response: `{data:[...], links?, meta?}` — NO
///     `{success,message}` wrapper at all.
///   - `show`/`store`/`accept`/`decline`/`cancel`/`submitReview` DO use the
///     `{success,message,data}` envelope.
class BookingApi {
  BookingApi(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> fetchBookings({String? status, int page = 1}) async {
    final response = await _dio.get(ApiEndpoints.bookings, queryParameters: {
      'page': page,
      if (status != null) 'status': status,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchUpcoming({int limit = 5}) async {
    final response = await _dio.get(ApiEndpoints.bookingsUpcoming, queryParameters: {
      'limit': limit,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchPendingRequests({int page = 1}) async {
    final response = await _dio.get(ApiEndpoints.tutorBookingRequests, queryParameters: {
      'page': page,
    });
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchBooking(int id) async {
    final response = await _dio.get(ApiEndpoints.booking(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> createBooking(Map<String, dynamic> payload) async {
    final response = await _dio.post(ApiEndpoints.bookings, data: payload);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> acceptBooking(int id) async {
    final response = await _dio.post(ApiEndpoints.bookingAccept(id));
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> declineBooking(int id, {String? reason}) async {
    final response = await _dio.post(
      ApiEndpoints.bookingDecline(id),
      data: {if (reason != null) 'reason': reason},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> cancelBooking(int id, {String? reason}) async {
    final response = await _dio.post(
      ApiEndpoints.bookingCancel(id),
      data: {if (reason != null) 'reason': reason},
    );
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> submitReview(
    int bookingId,
    Map<String, dynamic> payload,
  ) async {
    final response = await _dio.post(ApiEndpoints.bookingReview(bookingId), data: payload);
    return response.data as Map<String, dynamic>;
  }
}
