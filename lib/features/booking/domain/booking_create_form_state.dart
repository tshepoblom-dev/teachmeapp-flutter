import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_create_form_state.freezed.dart';

/// Allowed session durations (minutes). `CreateBookingRequest` validates
/// `min:60, max:480`; the exact admin-tunable list lives in
/// `PlatformSetting sessions.duration_options` (default [60,90,120,180]),
/// not yet exposed via API — see plan's backend-gap note. Hardcoded here
/// until `GET /api/settings/public` lands (Phase 7 TODO).
const kDurationOptions = [60, 90, 120, 180, 240, 300];

@freezed
class BookingCreateFormState with _$BookingCreateFormState {
  const factory BookingCreateFormState({
    String? subject,
    @Default('') String description,
    DateTime? scheduledAt,
    @Default(60) int durationMinutes,
    @Default(false) bool isSubmitting,
    Map<String, List<String>>? fieldErrors,
  }) = _BookingCreateFormState;
}
