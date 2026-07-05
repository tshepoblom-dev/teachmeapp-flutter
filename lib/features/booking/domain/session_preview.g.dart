// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionTimelineImpl _$$SessionTimelineImplFromJson(
  Map<String, dynamic> json,
) => _$SessionTimelineImpl(
  scheduledAt:
      json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
  startedAt:
      json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
  endedAt:
      json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
  durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SessionTimelineImplToJson(
  _$SessionTimelineImpl instance,
) => <String, dynamic>{
  'scheduled_at': instance.scheduledAt?.toIso8601String(),
  'started_at': instance.startedAt?.toIso8601String(),
  'ended_at': instance.endedAt?.toIso8601String(),
  'duration_minutes': instance.durationMinutes,
};

_$SessionPreviewImpl _$$SessionPreviewImplFromJson(Map<String, dynamic> json) =>
    _$SessionPreviewImpl(
      id: (json['id'] as num).toInt(),
      bookingId: (json['booking_id'] as num).toInt(),
      status: json['status'] as String,
      timeline: SessionTimeline.fromJson(
        json['timeline'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$SessionPreviewImplToJson(
  _$SessionPreviewImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'booking_id': instance.bookingId,
  'status': instance.status,
  'timeline': instance.timeline,
};
