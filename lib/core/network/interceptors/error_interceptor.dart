import 'package:dio/dio.dart';

import '../api_exception.dart';

/// Maps every [DioException] into a typed [AppException] (attached back onto
/// `DioException.error`) so repositories can pattern-match instead of
/// re-inspecting status codes.
///
/// Confirmed response shapes this parses against (`teachmeapp-custom`):
/// - 401: no guaranteed body shape — generic unauthenticated message.
/// - 403 (`CheckAccountStatus`): `{success:false, message, code, ...extra}`.
///   Role-mismatch 403s have no `code` — still surfaced as `forbidden`, but
///   callers should only route on a non-null `code`.
/// - 422: Laravel's default validation shape `{message, errors}`.
class ErrorInterceptor extends Interceptor {
  ErrorInterceptor({required this.onUnauthenticated});

  final void Function() onUnauthenticated;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final appException = _mapToAppException(err);
    handler.next(err.copyWith(error: appException));
  }

  AppException _mapToAppException(DioException err) {
    final response = err.response;

    if (response == null) {
      return AppException.network(
        err.message ?? 'Could not reach the server. Check your connection.',
      );
    }

    final body = response.data;
    final Map<String, dynamic> json = body is Map<String, dynamic> ? body : const {};

    switch (response.statusCode) {
      case 401:
        onUnauthenticated();
        return AppException.unauthenticated(
          json['message'] as String? ?? 'Your session has expired. Please log in again.',
        );
      case 403:
        return AppException.forbidden(
          json['message'] as String? ?? 'You do not have permission to do that.',
          code: json['code'] as String?,
          extra: json,
        );
      case 422:
        final rawErrors = json['errors'] as Map<String, dynamic>?;
        return AppException.validation(
          json['message'] as String? ?? 'Some fields need your attention.',
          rawErrors?.map(
                (key, value) => MapEntry(key, List<String>.from(value as List)),
              ) ??
              const {},
        );
      case 404:
        return AppException.notFound(json['message'] as String? ?? 'Not found.');
      default:
        final status = response.statusCode ?? 0;
        if (status >= 500) {
          return AppException.server(
            json['message'] as String? ?? 'Something went wrong on our end.',
          );
        }
        return AppException.unknown(
          json['message'] as String? ?? 'Something went wrong.',
        );
    }
  }
}
