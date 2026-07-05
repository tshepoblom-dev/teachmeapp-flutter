/// Envelope shape used by every custom Laravel endpoint:
/// `{success, message, data, errors?}`.
///
/// Pagination uses a different, Laravel-standard shape — see
/// [PaginatedResponse] — so this type is intentionally not reused for lists.
class ApiResponse<T> {
  const ApiResponse({
    required this.success,
    required this.message,
    this.data,
    this.errors,
  });

  final bool success;
  final String message;
  final T? data;
  final Map<String, List<String>>? errors;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? data) fromData,
  ) {
    return ApiResponse<T>(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] == null ? null : fromData(json['data']),
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(key, List<String>.from(value as List)),
      ),
    );
  }
}
