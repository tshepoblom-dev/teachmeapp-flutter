// ignore_for_file: invalid_annotation_target
import 'dart:developer' as developer;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_slot.freezed.dart';
part 'availability_slot.g.dart';

/// Clamps to `0..6` so a bad/unexpected value from the server can't crash a
/// `_weekdayNames[dayOfWeek]`-style lookup downstream.
int _clampDayOfWeek(dynamic value) {
  final parsed = value is num ? value.toInt() : int.parse(value.toString());
  if (parsed < 0 || parsed > 6) {
    developer.log('Out-of-range day_of_week: $parsed', name: 'AvailabilitySlot');
    return 0;
  }
  return parsed;
}

/// Mirrors `AvailabilitySlotResource`. day_of_week: 0=Mon..6=Sun.
@freezed
class AvailabilitySlot with _$AvailabilitySlot {
  const factory AvailabilitySlot({
    required int id,
    @JsonKey(fromJson: _clampDayOfWeek) required int dayOfWeek,
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
