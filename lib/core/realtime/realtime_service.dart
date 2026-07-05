/// Wrapper contract around the Pusher/Reverb client so screens never talk to
/// the socket directly.
///
/// Defined now (Phase 1) purely so call sites like `AuthNotifier.logout()`
/// can call [disconnect] from day one without a later refactor. The real
/// `PusherRealtimeService` implementation lands in Phase 4, and is blocked
/// until the `teachmeapp-custom` companion change adds a sanctum-authenticated
/// `/broadcasting/auth` route (see plan: "Realtime gap confirmed").
abstract class RealtimeService {
  Future<void> connect({required String authToken});

  Future<void> subscribePrivate(String channelName);

  void on(
    String channelName,
    String eventName,
    void Function(Map<String, dynamic> payload) handler,
  );

  Future<void> unsubscribe(String channelName);

  Future<void> disconnect();
}
