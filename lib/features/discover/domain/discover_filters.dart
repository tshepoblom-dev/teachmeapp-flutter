import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_filters.freezed.dart';

@freezed
class DiscoverFilters with _$DiscoverFilters {
  const factory DiscoverFilters({
    String? search,
    int? institutionId,
    int? subjectId,
    double? maxRate,
    double? minRating,
    @Default('rating') String sort, // rating | rate_asc | rate_desc
  }) = _DiscoverFilters;
}
