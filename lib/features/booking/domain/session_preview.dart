import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_preview.freezed.dart';
part 'session_preview.g.dart';

@freezed
class SessionTimeline with _$SessionTimeline {
  const factory SessionTimeline({
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
  }) = _SessionTimeline;

  factory SessionTimeline.fromJson(Map<String, dynamic> json) =>
      _$SessionTimelineFromJson(json);
}

/// Lightweight view of `SessionResource` as embedded inside a `Booking` —
/// just enough for a status badge and "Join" CTA. The full session detail
/// (channel/tokens) is fetched separately by `features/session` (Phase 4).
@freezed
class SessionPreview with _$SessionPreview {
  const factory SessionPreview({
    required int id,
    required int bookingId,
    required String status,
    required SessionTimeline timeline,
  }) = _SessionPreview;

  factory SessionPreview.fromJson(Map<String, dynamic> json) => _$SessionPreviewFromJson(json);
}

extension SessionPreviewStatusX on SessionPreview {
  bool get isJoinable => status == 'waiting' || status == 'active' || status == 'in_progress';
}
