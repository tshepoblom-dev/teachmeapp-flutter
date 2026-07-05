// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_detail.freezed.dart';
part 'session_detail.g.dart';

@freezed
class SessionChannel with _$SessionChannel {
  const factory SessionChannel({
    required String channelName,
    required String appId,
    int? uidStudent,
    int? uidTutor,
  }) = _SessionChannel;

  factory SessionChannel.fromJson(Map<String, dynamic> json) => _$SessionChannelFromJson(json);
}

@freezed
class SessionDetailTimeline with _$SessionDetailTimeline {
  const factory SessionDetailTimeline({
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
  }) = _SessionDetailTimeline;

  factory SessionDetailTimeline.fromJson(Map<String, dynamic> json) =>
      _$SessionDetailTimelineFromJson(json);
}

@freezed
class EarlyTermination with _$EarlyTermination {
  const factory EarlyTermination({String? reason, int? endedBy}) = _EarlyTermination;

  factory EarlyTermination.fromJson(Map<String, dynamic> json) =>
      _$EarlyTerminationFromJson(json);
}

/// Mirrors `SessionResource` (full detail — distinct from the lightweight
/// `SessionPreview` embedded inside `BookingResource`).
@freezed
class SessionDetail with _$SessionDetail {
  const factory SessionDetail({
    required int id,
    required int bookingId,
    required String status,
    SessionChannel? channel,
    required SessionDetailTimeline timeline,
    EarlyTermination? earlyTermination,
  }) = _SessionDetail;

  factory SessionDetail.fromJson(Map<String, dynamic> json) => _$SessionDetailFromJson(json);
}

extension SessionDetailStatusX on SessionDetail {
  bool get isJoinable => status == 'waiting' || status == 'active' || status == 'in_progress';
  bool get isEndable => status == 'active' || status == 'in_progress';
  bool get isEnded => status == 'ended';
}
