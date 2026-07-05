import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Fire-and-forget signal that a 401 came back from the API.
///
/// [ErrorInterceptor] calls this on every 401 so `core/network` never has to
/// import the `auth` feature directly. `features/auth`'s `AuthNotifier`
/// listens to this provider and performs the actual forced logout — keeping
/// the dependency one-directional (feature depends on core, not vice versa).
class AuthSessionEvents extends Notifier<int> {
  @override
  int build() => 0;

  void notifyUnauthenticated() => state++;
}

final authSessionEventsProvider =
    NotifierProvider<AuthSessionEvents, int>(AuthSessionEvents.new);
