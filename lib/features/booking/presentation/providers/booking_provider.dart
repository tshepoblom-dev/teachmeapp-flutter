import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/booking_api.dart';
import '../../data/booking_repository.dart';

final bookingApiProvider = Provider<BookingApi>((ref) => BookingApi(ref.watch(dioProvider)));

final bookingRepositoryProvider = Provider<BookingRepository>((ref) {
  return BookingRepository(ref.watch(bookingApiProvider));
});
