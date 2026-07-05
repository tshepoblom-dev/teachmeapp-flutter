import 'package:dio/dio.dart';

import '../../storage/secure_storage_service.dart';

/// Attaches the Sanctum bearer token (when present) to every outgoing
/// request. Auth endpoints (login/register/forgot-password/reset-password)
/// simply have no token yet, so this is a no-op for them.
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._secureStorage);

  final SecureStorageService _secureStorage;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    final token = await _secureStorage.readToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
