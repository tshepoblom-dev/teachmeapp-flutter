import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../storage/secure_storage_service.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

/// Builds the single [Dio] instance used by every repository.
///
/// Interceptor order matters: auth-attach must run on the request before
/// anything else, error-mapping must run on the response/error path, and
/// logging wraps the outermost layer so it sees the final request/response.
Dio buildDio({
  required String baseUrl,
  required SecureStorageService secureStorage,
  required void Function() onUnauthenticated,
}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 20),
      headers: {'Accept': 'application/json'},
    ),
  );

  dio.interceptors.addAll([
    AuthInterceptor(secureStorage),
    ErrorInterceptor(onUnauthenticated: onUnauthenticated),
    if (kDebugMode) buildLoggingInterceptor(),
  ]);

  return dio;
}
