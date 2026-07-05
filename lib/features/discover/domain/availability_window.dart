import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_window.freezed.dart';
part 'availability_window.g.dart';

/// Read-only weekly window — `GET /tutors/{id}/availability` returns these
/// raw, unfiltered against existing bookings (see plan: calendar
/// conflict-shading is a v1 backend gap, deferred). day_of_week: 0=Mon.
@freezed
class AvailabilityWindow with _$AvailabilityWindow {
  const factory AvailabilityWindow({
    required int dayOfWeek,
    required String startTime,
    required String endTime,
  }) = _AvailabilityWindow;

  factory AvailabilityWindow.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityWindowFromJson(json);
}
