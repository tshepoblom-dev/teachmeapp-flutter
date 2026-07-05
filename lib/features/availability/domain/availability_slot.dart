import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_slot.freezed.dart';
part 'availability_slot.g.dart';

/// Mirrors `AvailabilitySlotResource`. day_of_week: 0=Mon..6=Sun.
@freezed
class AvailabilitySlot with _$AvailabilitySlot {
  const factory AvailabilitySlot({
    required int id,
    required int dayOfWeek,
    required String startTime,
    required String endTime,
    required bool isRecurring,
    required bool isActive,
    String? validFrom,
    String? validUntil,
  }) = _AvailabilitySlot;

  factory AvailabilitySlot.fromJson(Map<String, dynamic> json) =>
      _$AvailabilitySlotFromJson(json);
}
