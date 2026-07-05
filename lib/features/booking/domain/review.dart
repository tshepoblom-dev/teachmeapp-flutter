import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class ReviewerRef with _$ReviewerRef {
  const factory ReviewerRef({required int id, required String name}) = _ReviewerRef;

  factory ReviewerRef.fromJson(Map<String, dynamic> json) => _$ReviewerRefFromJson(json);
}

/// Mirrors `ReviewResource`.
@freezed
class Review with _$Review {
  const factory Review({
    required int id,
    required int bookingId,
    required int rating,
    String? comment,
    @Default([]) List<String> tags,
    required bool isVisible,
    DateTime? reviewedAt,
    ReviewerRef? reviewer,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
