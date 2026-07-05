// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilitySlotImpl _$$AvailabilitySlotImplFromJson(
  Map<String, dynamic> json,
) => _$AvailabilitySlotImpl(
  id: (json['id'] as num).toInt(),
  dayOfWeek: (json['day_of_week'] as num).toInt(),
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
  isRecurring: json['is_recurring'] as bool,
  isActive: json['is_active'] as bool,
  validFrom: json['valid_from'] as String?,
  validUntil: json['valid_until'] as String?,
);

Map<String, dynamic> _$$AvailabilitySlotImplToJson(
  _$AvailabilitySlotImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'day_of_week': instance.dayOfWeek,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'is_recurring': instance.isRecurring,
  'is_active': instance.isActive,
  'valid_from': instance.validFrom,
  'valid_until': instance.validUntil,
};
