import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/booking.dart';
import '../../domain/booking_create_form_state.dart';
import 'booking_list_provider.dart';
import 'booking_provider.dart';

class BookingCreateNotifier extends FamilyNotifier<BookingCreateFormState, int> {
  @override
  BookingCreateFormState build(int tutorId) => const BookingCreateFormState();

  void setSubject(String subject) => state = state.copyWith(subject: subject);

  void setDescription(String description) => state = state.copyWith(description: description);

  void setScheduledAt(DateTime scheduledAt) => state = state.copyWith(scheduledAt: scheduledAt);

  void setDuration(int minutes) => state = state.copyWith(durationMinutes: minutes);

  /// Live preview only — the server's `total_amount` on the created booking
  /// is always authoritative.
  double previewTotal(double hourlyRate) => hourlyRate * state.durationMinutes / 60;

  Future<Booking> submit() async {
    state = state.copyWith(isSubmitting: true, fieldErrors: null);
    try {
      final booking = await ref.read(bookingRepositoryProvider).createBooking(
            tutorId: arg,
            subject: state.subject!,
            description: state.description,
            scheduledAt: state.scheduledAt!,
            durationMinutes: state.durationMinutes,
          );
      ref.invalidate(bookingListProvider);
      ref.invalidate(upcomingBookingsProvider);
      state = state.copyWith(isSubmitting: false);
      return booking;
    } catch (error) {
      final fieldErrors = error is ValidationException ? error.errors : null;
      state = state.copyWith(isSubmitting: false, fieldErrors: fieldErrors);
      rethrow;
    }
  }
}

final bookingCreateProvider =
    NotifierProvider.family<BookingCreateNotifier, BookingCreateFormState, int>(
  BookingCreateNotifier.new,
);
