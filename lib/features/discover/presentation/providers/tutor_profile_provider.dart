import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/availability_window.dart';
import '../../domain/tutor_profile.dart';
import 'discover_provider.dart';

final tutorProfileProvider = FutureProvider.family<TutorProfileDetail, int>((ref, tutorId) {
  return ref.read(discoverRepositoryProvider).fetchTutorProfile(tutorId);
});

final tutorAvailabilityProvider =
    FutureProvider.family<List<AvailabilityWindow>, int>((ref, tutorId) {
  return ref.read(discoverRepositoryProvider).fetchTutorAvailability(tutorId);
});
