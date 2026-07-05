// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'review.dart';
import 'session_preview.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

double _toDouble(dynamic value) => (value as num).toDouble();

/// Mirrors `BookingResource`'s `financials` block — only present
/// (`whenLoaded`/`when`) for the booking's two parties or an admin.
@freezed
class BookingFinancials with _$BookingFinancials {
  const factory BookingFinancials({
    @JsonKey(fromJson: _toDouble) required double hourlyRate,
    @JsonKey(fromJson: _toDouble) required double totalAmount,
    @JsonKey(fromJson: _toDouble) required double platformFeePercent,
    required String currency,
  }) = _BookingFinancials;

  factory BookingFinancials.fromJson(Map<String, dynamic> json) =>
      _$BookingFinancialsFromJson(json);
}

@freezed
class BookingCancellation with _$BookingCancellation {
  const factory BookingCancellation({
    String? reason,
    String? cancelledBy,
  }) = _BookingCancellation;

  factory BookingCancellation.fromJson(Map<String, dynamic> json) =>
      _$BookingCancellationFromJson(json);
}

@freezed
class BookingParty with _$BookingParty {
  const factory BookingParty({
    required int id,
    required String name,
    String? avatar,
    String? tier,
  }) = _BookingParty;

  factory BookingParty.fromJson(Map<String, dynamic> json) => _$BookingPartyFromJson(json);
}

@freezed
class BookingEscrow with _$BookingEscrow {
  const factory BookingEscrow({String? status}) = _BookingEscrow;

  factory BookingEscrow.fromJson(Map<String, dynamic> json) => _$BookingEscrowFromJson(json);
}

@freezed
class BookingPaymentMethodRef with _$BookingPaymentMethodRef {
  const factory BookingPaymentMethodRef({
    required int id,
    required String name,
    required String code,
  }) = _BookingPaymentMethodRef;

  factory BookingPaymentMethodRef.fromJson(Map<String, dynamic> json) =>
      _$BookingPaymentMethodRefFromJson(json);
}

/// Mirrors `BookingResource`. Status: pending|accepted|declined|cancelled|
/// in_progress|completed|disputed|refunded.
@freezed
class Booking with _$Booking {
  const factory Booking({
    required int id,
    required String status,
    required String subject,
    String? description,
    required DateTime scheduledAt,
    required int durationMinutes,
    DateTime? endsAt,
    BookingFinancials? financials,
    BookingCancellation? cancellation,
    int? rescheduledFromBookingId,
    BookingParty? student,
    BookingParty? tutor,
    SessionPreview? session,
    BookingEscrow? escrow,
    BookingPaymentMethodRef? paymentMethod,
    Review? review,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}

extension BookingStatusX on Booking {
  bool get isPending => status == 'pending';
  bool get isAccepted => status == 'accepted';
  bool get isCancellable => status == 'pending' || status == 'accepted';
  bool get isCompleted => status == 'completed';
  bool get canReview => isCompleted && review == null;
}
