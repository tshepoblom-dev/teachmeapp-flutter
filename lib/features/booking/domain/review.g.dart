// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewerRefImpl _$$ReviewerRefImplFromJson(Map<String, dynamic> json) =>
    _$ReviewerRefImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ReviewerRefImplToJson(_$ReviewerRefImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
  id: (json['id'] as num).toInt(),
  bookingId: (json['booking_id'] as num).toInt(),
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isVisible: json['is_visible'] as bool,
  reviewedAt:
      json['reviewed_at'] == null
          ? null
          : DateTime.parse(json['reviewed_at'] as String),
  reviewer:
      json['reviewer'] == null
          ? null
          : ReviewerRef.fromJson(json['reviewer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'rating': instance.rating,
      'comment': instance.comment,
      'tags': instance.tags,
      'is_visible': instance.isVisible,
      'reviewed_at': instance.reviewedAt?.toIso8601String(),
      'reviewer': instance.reviewer,
    };
