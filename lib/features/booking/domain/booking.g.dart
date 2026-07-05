// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingFinancialsImpl _$$BookingFinancialsImplFromJson(
  Map<String, dynamic> json,
) => _$BookingFinancialsImpl(
  hourlyRate: _toDouble(json['hourly_rate']),
  totalAmount: _toDouble(json['total_amount']),
  platformFeePercent: _toDouble(json['platform_fee_percent']),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$BookingFinancialsImplToJson(
  _$BookingFinancialsImpl instance,
) => <String, dynamic>{
  'hourly_rate': instance.hourlyRate,
  'total_amount': instance.totalAmount,
  'platform_fee_percent': instance.platformFeePercent,
  'currency': instance.currency,
};

_$BookingCancellationImpl _$$BookingCancellationImplFromJson(
  Map<String, dynamic> json,
) => _$BookingCancellationImpl(
  reason: json['reason'] as String?,
  cancelledBy: json['cancelled_by'] as String?,
);

Map<String, dynamic> _$$BookingCancellationImplToJson(
  _$BookingCancellationImpl instance,
) => <String, dynamic>{
  'reason': instance.reason,
  'cancelled_by': instance.cancelledBy,
};

_$BookingPartyImpl _$$BookingPartyImplFromJson(Map<String, dynamic> json) =>
    _$BookingPartyImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
      tier: json['tier'] as String?,
    );

Map<String, dynamic> _$$BookingPartyImplToJson(_$BookingPartyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'tier': instance.tier,
    };

_$BookingEscrowImpl _$$BookingEscrowImplFromJson(Map<String, dynamic> json) =>
    _$BookingEscrowImpl(status: json['status'] as String?);

Map<String, dynamic> _$$BookingEscrowImplToJson(_$BookingEscrowImpl instance) =>
    <String, dynamic>{'status': instance.status};

_$BookingPaymentMethodRefImpl _$$BookingPaymentMethodRefImplFromJson(
  Map<String, dynamic> json,
) => _$BookingPaymentMethodRefImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$$BookingPaymentMethodRefImplToJson(
  _$BookingPaymentMethodRefImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
};

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String?,
      scheduledAt: DateTime.parse(json['scheduled_at'] as String),
      durationMinutes: (json['duration_minutes'] as num).toInt(),
      endsAt:
          json['ends_at'] == null
              ? null
              : DateTime.parse(json['ends_at'] as String),
      financials:
          json['financials'] == null
              ? null
              : BookingFinancials.fromJson(
                json['financials'] as Map<String, dynamic>,
              ),
      cancellation:
          json['cancellation'] == null
              ? null
              : BookingCancellation.fromJson(
                json['cancellation'] as Map<String, dynamic>,
              ),
      rescheduledFromBookingId:
          (json['rescheduled_from_booking_id'] as num?)?.toInt(),
      student:
          json['student'] == null
              ? null
              : BookingParty.fromJson(json['student'] as Map<String, dynamic>),
      tutor:
          json['tutor'] == null
              ? null
              : BookingParty.fromJson(json['tutor'] as Map<String, dynamic>),
      session:
          json['session'] == null
              ? null
              : SessionPreview.fromJson(
                json['session'] as Map<String, dynamic>,
              ),
      escrow:
          json['escrow'] == null
              ? null
              : BookingEscrow.fromJson(json['escrow'] as Map<String, dynamic>),
      paymentMethod:
          json['payment_method'] == null
              ? null
              : BookingPaymentMethodRef.fromJson(
                json['payment_method'] as Map<String, dynamic>,
              ),
      review:
          json['review'] == null
              ? null
              : Review.fromJson(json['review'] as Map<String, dynamic>),
      createdAt:
          json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'subject': instance.subject,
      'description': instance.description,
      'scheduled_at': instance.scheduledAt.toIso8601String(),
      'duration_minutes': instance.durationMinutes,
      'ends_at': instance.endsAt?.toIso8601String(),
      'financials': instance.financials,
      'cancellation': instance.cancellation,
      'rescheduled_from_booking_id': instance.rescheduledFromBookingId,
      'student': instance.student,
      'tutor': instance.tutor,
      'session': instance.session,
      'escrow': instance.escrow,
      'payment_method': instance.paymentMethod,
      'review': instance.review,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
