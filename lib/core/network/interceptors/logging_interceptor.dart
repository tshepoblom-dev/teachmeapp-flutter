import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Dev-only request/response logger. Only ever added to the interceptor
/// chain when `kDebugMode` is true (see `api_client.dart`) — headers are
/// never printed so the bearer token can't leak into release or debug logs.
PrettyDioLogger buildLoggingInterceptor() {
  return PrettyDioLogger(
    requestHeader: false,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
  );
}
