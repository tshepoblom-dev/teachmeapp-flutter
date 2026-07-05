import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/availability_api.dart';
import '../../data/availability_repository.dart';
import '../../domain/availability_slot.dart';

final availabilityApiProvider =
    Provider<AvailabilityApi>((ref) => AvailabilityApi(ref.watch(dioProvider)));

final availabilityRepositoryProvider = Provider<AvailabilityRepository>((ref) {
  return AvailabilityRepository(ref.watch(availabilityApiProvider));
});

class AvailabilityListNotifier extends AsyncNotifier<List<AvailabilitySlot>> {
  @override
  Future<List<AvailabilitySlot>> build() {
    return ref.read(availabilityRepositoryProvider).fetchSlots();
  }

  Future<void> createSlot({
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    bool isRecurring = true,
  }) async {
    await ref.read(availabilityRepositoryProvider).createSlot(
          dayOfWeek: dayOfWeek,
          startTime: startTime,
          endTime: endTime,
          isRecurring: isRecurring,
        );
    ref.invalidateSelf();
  }

  Future<void> toggleSlot(AvailabilitySlot slot) async {
    await ref.read(availabilityRepositoryProvider).toggleSlot(slot.id);
    ref.invalidateSelf();
  }

  Future<void> deleteSlot(int slotId) async {
    await ref.read(availabilityRepositoryProvider).deleteSlot(slotId);
    ref.invalidateSelf();
  }
}

final availabilityListProvider =
    AsyncNotifierProvider<AvailabilityListNotifier, List<AvailabilitySlot>>(
  AvailabilityListNotifier.new,
);
