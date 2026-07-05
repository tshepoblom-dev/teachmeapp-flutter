// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_window.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityWindowImpl _$$AvailabilityWindowImplFromJson(
  Map<String, dynamic> json,
) => _$AvailabilityWindowImpl(
  dayOfWeek: (json['day_of_week'] as num).toInt(),
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
);

Map<String, dynamic> _$$AvailabilityWindowImplToJson(
  _$AvailabilityWindowImpl instance,
) => <String, dynamic>{
  'day_of_week': instance.dayOfWeek,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
};
