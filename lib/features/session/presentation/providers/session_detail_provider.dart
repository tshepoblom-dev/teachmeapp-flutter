import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/session_detail.dart';
import 'session_provider.dart';

class SessionDetailNotifier extends FamilyAsyncNotifier<SessionDetail, int> {
  @override
  Future<SessionDetail> build(int sessionId) {
    return ref.read(sessionRepositoryProvider).fetchSession(sessionId);
  }

  void refresh() => ref.invalidateSelf();
}

final sessionDetailProvider =
    AsyncNotifierProvider.family<SessionDetailNotifier, SessionDetail, int>(
  SessionDetailNotifier.new,
);
