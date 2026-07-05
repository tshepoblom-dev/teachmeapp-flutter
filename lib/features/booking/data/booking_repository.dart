import 'package:dio/dio.dart';

import '../../../core/network/api_exception.dart';
import '../../../core/network/paginated_response.dart';
import '../domain/booking.dart';
import '../domain/review.dart';
import 'booking_api.dart';

class BookingRepository {
  BookingRepository(this._api);

  final BookingApi _api;

  /// `GET /bookings` — bare paginator, no `{success,message}` envelope.
  Future<PaginatedResponse<Booking>> fetchBookings({String? status, int page = 1}) async {
    try {
      final body = await _api.fetchBookings(status: status, page: page);
      return PaginatedResponse<Booking>.fromJson(body, Booking.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `GET /bookings/upcoming/list` — bare `{data:[...]}`, not paginated.
  Future<List<Booking>> fetchUpcoming({int limit = 5}) async {
    try {
      final body = await _api.fetchUpcoming(limit: limit);
      final items = (body['data'] as List).cast<Map<String, dynamic>>();
      return items.map(Booking.fromJson).toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  /// `GET /tutor/bookings/requests` — bare paginator, same shape as
  /// `fetchBookings`.
  Future<PaginatedResponse<Booking>> fetchPendingRequests({int page = 1}) async {
    try {
      final body = await _api.fetchPendingRequests(page: page);
      return PaginatedResponse<Booking>.fromJson(body, Booking.fromJson);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<Booking> fetchBooking(int id) async {
    try {
      final body = await _api.fetchBooking(id);
      return Booking.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<Booking> createBooking({
    required int tutorId,
    required String subject,
    String? description,
    required DateTime scheduledAt,
    required int durationMinutes,
    int? paymentMethodId,
  }) async {
    try {
      final body = await _api.createBooking({
        'tutor_id': tutorId,
        'subject': subject,
        if (description != null && description.isNotEmpty) 'description': description,
        'scheduled_at': scheduledAt.toUtc().toIso8601String(),
        'duration_minutes': durationMinutes,
        if (paymentMethodId != null) 'payment_method_id': paymentMethodId,
      });
      return Booking.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<Booking> acceptBooking(int id) async {
    try {
      final body = await _api.acceptBooking(id);
      return Booking.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<Booking> declineBooking(int id, {String? reason}) async {
    try {
      final body = await _api.declineBooking(id, reason: reason);
      return Booking.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<Booking> cancelBooking(int id, {String? reason}) async {
    try {
      final body = await _api.cancelBooking(id, reason: reason);
      return Booking.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  Future<Review> submitReview(
    int bookingId, {
    required int rating,
    String? comment,
    List<String>? tags,
  }) async {
    try {
      final body = await _api.submitReview(bookingId, {
        'rating': rating,
        if (comment != null && comment.isNotEmpty) 'comment': comment,
        if (tags != null && tags.isNotEmpty) 'tags': tags,
      });
      return Review.fromJson(body['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
