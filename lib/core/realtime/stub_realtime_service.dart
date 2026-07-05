import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'realtime_service.dart';

/// No-op [RealtimeService] used until Phase 4 wires up
/// `pusher_channels_flutter` for real. Safe to call from [AuthNotifier] now.
class StubRealtimeService implements RealtimeService {
  @override
  Future<void> connect({required String authToken}) async {}

  @override
  Future<void> subscribePrivate(String channelName) async {}

  @override
  void on(
    String channelName,
    String eventName,
    void Function(Map<String, dynamic> payload) handler,
  ) {}

  @override
  Future<void> unsubscribe(String channelName) async {}

  @override
  Future<void> disconnect() async {}
}

final realtimeServiceProvider = Provider<RealtimeService>((ref) {
  return StubRealtimeService();
});
