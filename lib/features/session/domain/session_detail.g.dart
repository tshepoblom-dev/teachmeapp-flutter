// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionChannelImpl _$$SessionChannelImplFromJson(Map<String, dynamic> json) =>
    _$SessionChannelImpl(
      channelName: json['channel_name'] as String,
      appId: json['app_id'] as String,
      uidStudent: (json['uid_student'] as num?)?.toInt(),
      uidTutor: (json['uid_tutor'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SessionChannelImplToJson(
  _$SessionChannelImpl instance,
) => <String, dynamic>{
  'channel_name': instance.channelName,
  'app_id': instance.appId,
  'uid_student': instance.uidStudent,
  'uid_tutor': instance.uidTutor,
};

_$SessionDetailTimelineImpl _$$SessionDetailTimelineImplFromJson(
  Map<String, dynamic> json,
) => _$SessionDetailTimelineImpl(
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

Map<String, dynamic> _$$SessionDetailTimelineImplToJson(
  _$SessionDetailTimelineImpl instance,
) => <String, dynamic>{
  'scheduled_at': instance.scheduledAt?.toIso8601String(),
  'started_at': instance.startedAt?.toIso8601String(),
  'ended_at': instance.endedAt?.toIso8601String(),
  'duration_minutes': instance.durationMinutes,
};

_$EarlyTerminationImpl _$$EarlyTerminationImplFromJson(
  Map<String, dynamic> json,
) => _$EarlyTerminationImpl(
  reason: json['reason'] as String?,
  endedBy: (json['ended_by'] as num?)?.toInt(),
);

Map<String, dynamic> _$$EarlyTerminationImplToJson(
  _$EarlyTerminationImpl instance,
) => <String, dynamic>{'reason': instance.reason, 'ended_by': instance.endedBy};

_$SessionDetailImpl _$$SessionDetailImplFromJson(Map<String, dynamic> json) =>
    _$SessionDetailImpl(
      id: (json['id'] as num).toInt(),
      bookingId: (json['booking_id'] as num).toInt(),
      status: json['status'] as String,
      channel:
          json['channel'] == null
              ? null
              : SessionChannel.fromJson(
                json['channel'] as Map<String, dynamic>,
              ),
      timeline: SessionDetailTimeline.fromJson(
        json['timeline'] as Map<String, dynamic>,
      ),
      earlyTermination:
          json['early_termination'] == null
              ? null
              : EarlyTermination.fromJson(
                json['early_termination'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$SessionDetailImplToJson(_$SessionDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'status': instance.status,
      'channel': instance.channel,
      'timeline': instance.timeline,
      'early_termination': instance.earlyTermination,
    };
