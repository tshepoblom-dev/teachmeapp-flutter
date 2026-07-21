import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/secure_storage_service.dart';
import 'api_client.dart';
import 'auth_session_events.dart';

/// API base URL, e.g. `http://10.0.2.2:8000/api` for the Android emulator
/// talking to a local `php artisan serve`, or a real host for staging/prod.
/// Override per build with:
///   flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8000/api
const apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'https://teachmeapp.co.za/api',
);

final dioProvider = Provider<Dio>((ref) {
  final secureStorage = ref.watch(secureStorageServiceProvider);
  return buildDio(
    baseUrl: apiBaseUrl,
    secureStorage: secureStorage,
    onUnauthenticated:
        () =>
            ref
                .read(authSessionEventsProvider.notifier)
                .notifyUnauthenticated(),
  );
});
