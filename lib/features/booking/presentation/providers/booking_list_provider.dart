import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/booking.dart';
import 'booking_provider.dart';

class BookingListResult {
  const BookingListResult({required this.bookings, required this.hasMore, required this.page});

  final List<Booking> bookings;
  final bool hasMore;
  final int page;
}

/// Keyed by status filter (`null` = "All"). One [BookingListNotifier]
/// instance per status tab, so switching tabs doesn't refetch tabs already
/// loaded.
class BookingListNotifier extends FamilyAsyncNotifier<BookingListResult, String?> {
  @override
  Future<BookingListResult> build(String? status) async {
    final page = await ref.read(bookingRepositoryProvider).fetchBookings(status: status);
    return BookingListResult(bookings: page.data, hasMore: page.hasMore, page: page.currentPage);
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore) return;

    final next = await ref
        .read(bookingRepositoryProvider)
        .fetchBookings(status: arg, page: current.page + 1);

    state = AsyncValue.data(BookingListResult(
      bookings: [...current.bookings, ...next.data],
      hasMore: next.hasMore,
      page: next.currentPage,
    ));
  }

  void refresh() => ref.invalidateSelf();
}

final bookingListProvider =
    AsyncNotifierProvider.family<BookingListNotifier, BookingListResult, String?>(
  BookingListNotifier.new,
);

/// Dashboard widget data — next few upcoming confirmed bookings.
final upcomingBookingsProvider = FutureProvider<List<Booking>>((ref) {
  return ref.read(bookingRepositoryProvider).fetchUpcoming();
});

class PendingRequestsResult {
  const PendingRequestsResult({
    required this.bookings,
    required this.hasMore,
    required this.page,
  });

  final List<Booking> bookings;
  final bool hasMore;
  final int page;
}

/// Tutor-only: `GET /tutor/bookings/requests` — pending requests inbox.
class PendingRequestsNotifier extends AsyncNotifier<PendingRequestsResult> {
  @override
  Future<PendingRequestsResult> build() async {
    final page = await ref.read(bookingRepositoryProvider).fetchPendingRequests();
    return PendingRequestsResult(
      bookings: page.data,
      hasMore: page.hasMore,
      page: page.currentPage,
    );
  }

  void refresh() => ref.invalidateSelf();
}

final pendingRequestsProvider =
    AsyncNotifierProvider<PendingRequestsNotifier, PendingRequestsResult>(
  PendingRequestsNotifier.new,
);
