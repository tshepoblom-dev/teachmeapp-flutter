import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// `true` once the device reports at least one non-`none` connectivity
/// result. This reflects radio/link state only — a Wi-Fi connection with no
/// actual internet access still reports `true` here; API calls still surface
/// their own network errors via [ApiException.network] regardless.
final isOnlineProvider = StreamProvider<bool>((ref) {
  return Connectivity()
      .onConnectivityChanged
      .map((results) => results.any((r) => r != ConnectivityResult.none));
});
