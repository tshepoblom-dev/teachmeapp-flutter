import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/booking.dart';
import '../../domain/review.dart';
import 'booking_list_provider.dart';
import 'booking_provider.dart';

class BookingDetailNotifier extends FamilyAsyncNotifier<Booking, int> {
  @override
  Future<Booking> build(int bookingId) {
    return ref.read(bookingRepositoryProvider).fetchBooking(bookingId);
  }

  void refresh() => ref.invalidateSelf();
}

final bookingDetailProvider =
    AsyncNotifierProvider.family<BookingDetailNotifier, Booking, int>(BookingDetailNotifier.new);

/// Mutations (accept/decline/cancel/review) for a single booking. Kept
/// separate from [bookingDetailProvider] so action-button loading/error
/// state doesn't fight with the detail screen's own fetch state.
class BookingActionsNotifier extends Notifier<AsyncValue<void>> {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<void> accept(int bookingId) => _run(() async {
        await ref.read(bookingRepositoryProvider).acceptBooking(bookingId);
        _invalidateAfterMutation(bookingId);
      });

  Future<void> decline(int bookingId, {String? reason}) => _run(() async {
        await ref.read(bookingRepositoryProvider).declineBooking(bookingId, reason: reason);
        _invalidateAfterMutation(bookingId);
      });

  Future<void> cancel(int bookingId, {String? reason}) => _run(() async {
        await ref.read(bookingRepositoryProvider).cancelBooking(bookingId, reason: reason);
        _invalidateAfterMutation(bookingId);
      });

  Future<Review> submitReview(
    int bookingId, {
    required int rating,
    String? comment,
    List<String>? tags,
  }) async {
    state = const AsyncValue.loading();
    try {
      final review = await ref.read(bookingRepositoryProvider).submitReview(
            bookingId,
            rating: rating,
            comment: comment,
            tags: tags,
          );
      _invalidateAfterMutation(bookingId);
      state = const AsyncValue.data(null);
      return review;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncValue.loading();
    try {
      await action();
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  void _invalidateAfterMutation(int bookingId) {
    ref.invalidate(bookingDetailProvider(bookingId));
    ref.invalidate(bookingListProvider);
    ref.invalidate(pendingRequestsProvider);
    ref.invalidate(upcomingBookingsProvider);
  }
}

final bookingActionsProvider =
    NotifierProvider<BookingActionsNotifier, AsyncValue<void>>(BookingActionsNotifier.new);
