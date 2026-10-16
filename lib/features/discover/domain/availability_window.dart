// ignore_for_file: invalid_annotation_target
import 'dart:developer' as developer;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_window.freezed.dart';
part 'availability_window.g.dart';

/// Clamps to `0..6` so a bad/unexpected value from the server can't crash a
/// `_weekdayNames[dayOfWeek]`-style lookup downstream.
int _clampDayOfWeek(dynamic value) {
  final parsed = value is num ? value.toInt() : int.parse(value.toString());
  if (parsed < 0 || parsed > 6) {
    developer.log('Out-of-range day_of_week: $parsed', name: 'AvailabilityWindow');
    return 0;
  }
  return parsed;
}

/// Read-only weekly window — `GET /tutors/{id}/availability` returns these
/// raw, unfiltered against existing bookings (see plan: calendar
/// conflict-shading is a v1 backend gap, deferred). day_of_week: 0=Mon.
@freezed
class AvailabilityWindow with _$AvailabilityWindow {
  const factory AvailabilityWindow({
    @JsonKey(fromJson: _clampDayOfWeek) required int dayOfWeek,
    required String startTime,
    required String endTime,
  }) = _AvailabilityWindow;

  factory AvailabilityWindow.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityWindowFromJson(json);
}
