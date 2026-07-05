import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/join_response.dart';
import 'session_detail_provider.dart';
import 'session_provider.dart';

/// Mutations (join/start/end/keepalive/token-refresh/report) for a single
/// session. Kept separate from [sessionDetailProvider] so action-button
/// loading/error state doesn't fight with the detail screen's own fetch state.
class SessionActionsNotifier extends Notifier<AsyncValue<void>> {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  Future<JoinResponse> join(int sessionId) async {
    state = const AsyncValue.loading();
    try {
      final result = await ref.read(sessionRepositoryProvider).join(sessionId);
      state = const AsyncValue.data(null);
      return result;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> start(int sessionId) => _run(() async {
        await ref.read(sessionRepositoryProvider).start(sessionId);
        ref.invalidate(sessionDetailProvider(sessionId));
      });

  Future<void> end(int sessionId) => _run(() async {
        await ref.read(sessionRepositoryProvider).end(sessionId);
        ref.invalidate(sessionDetailProvider(sessionId));
      });

  Future<void> keepalive(int sessionId) async {
    await ref.read(sessionRepositoryProvider).keepalive(sessionId);
  }

  Future<TokenRefreshResponse> refreshToken(int sessionId) {
    return ref.read(sessionRepositoryProvider).refreshToken(sessionId);
  }

  Future<String> submitReport(
    int sessionId, {
    required String reason,
    String? description,
    required String actionTaken,
  }) async {
    state = const AsyncValue.loading();
    try {
      final message = await ref.read(sessionRepositoryProvider).submitReport(
            sessionId,
            reason: reason,
            description: description,
            actionTaken: actionTaken,
          );
      ref.invalidate(sessionDetailProvider(sessionId));
      state = const AsyncValue.data(null);
      return message;
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncValue.loading();
    try {
      await action();
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }
}

final sessionActionsProvider =
    NotifierProvider<SessionActionsNotifier, AsyncValue<void>>(SessionActionsNotifier.new);
