/// Laravel's standard paginator shape: `{data:[], links:{}, meta:{}}`.
///
/// Used by list endpoints (bookings, notifications, chat, reviews,
/// transactions) — distinct from [ApiResponse], which wraps single-resource
/// custom endpoints in `{success, message, data}`.
class PaginatedResponse<T> {
  const PaginatedResponse({
    required this.data,
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    this.nextPageUrl,
  });

  final List<T> data;
  final int currentPage;
  final int lastPage;
  final int perPage;
  final int total;
  final String? nextPageUrl;

  bool get hasMore => currentPage < lastPage;

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> item) fromItem,
  ) {
    final meta = json['meta'] as Map<String, dynamic>;
    final links = json['links'] as Map<String, dynamic>?;
    return PaginatedResponse<T>(
      data: (json['data'] as List)
          .map((item) => fromItem(item as Map<String, dynamic>))
          .toList(),
      currentPage: meta['current_page'] as int,
      lastPage: meta['last_page'] as int,
      perPage: meta['per_page'] as int,
      total: meta['total'] as int,
      nextPageUrl: links?['next'] as String?,
    );
  }
}
