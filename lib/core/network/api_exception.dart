import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

/// Typed representation of every way a Laravel API call can fail.
///
/// Produced by [ErrorInterceptor] from a [DioException] and surfaced to
/// repositories/providers via `DioException.error`, so callers can
/// pattern-match instead of inspecting raw status codes a second time.
@freezed
sealed class AppException with _$AppException {
  const factory AppException.network(String message) = NetworkException;

  const factory AppException.unauthenticated(String message) = UnauthenticatedException;

  /// A 403 from `CheckAccountStatus` carries `code` (account_banned,
  /// account_suspended, pending_kyc). A 403 from role-mismatch middleware has
  /// no `code` and should be shown as a toast, not routed.
  const factory AppException.forbidden(
    String message, {
    String? code,
    Map<String, dynamic>? extra,
  }) = ForbiddenException;

  const factory AppException.validation(
    String message,
    Map<String, List<String>> errors,
  ) = ValidationException;

  const factory AppException.notFound(String message) = NotFoundException;

  const factory AppException.server(String message) = ServerException;

  const factory AppException.unknown(String message) = UnknownException;
}

/// Repositories catch [DioException] and call `e.toAppException()` to get
/// back the typed exception [ErrorInterceptor] already attached.
extension DioExceptionX on DioException {
  AppException toAppException() {
    final attached = error;
    if (attached is AppException) return attached;
    return AppException.unknown(message ?? 'Something went wrong.');
  }
}
