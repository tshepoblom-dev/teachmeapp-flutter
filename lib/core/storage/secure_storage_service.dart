import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'storage_keys.dart';

/// Thin wrapper around [FlutterSecureStorage] scoped to the Sanctum token.
///
/// Callers (notably [AuthInterceptor]) read the token on every request, so
/// this caches the value in memory after the first read/write and only hits
/// the platform secure-storage channel again after [clearToken] or a fresh
/// [saveToken] call.
class SecureStorageService {
  SecureStorageService({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;
  String? _cachedToken;
  bool _hydrated = false;

  Future<String?> readToken() async {
    if (_hydrated) return _cachedToken;
    _cachedToken = await _storage.read(key: StorageKeys.authToken);
    _hydrated = true;
    return _cachedToken;
  }

  Future<void> saveToken(String token) async {
    _cachedToken = token;
    _hydrated = true;
    await _storage.write(key: StorageKeys.authToken, value: token);
  }

  Future<void> clearToken() async {
    _cachedToken = null;
    _hydrated = true;
    await _storage.delete(key: StorageKeys.authToken);
  }
}

final secureStorageServiceProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});
