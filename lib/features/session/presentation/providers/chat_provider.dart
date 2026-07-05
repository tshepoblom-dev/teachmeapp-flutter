import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/chat_message.dart';
import 'session_provider.dart';

/// Realtime broadcast auth is blocked server-side (bearer-token clients can't
/// authenticate against `/broadcasting/auth` yet — see plan notes), so chat
/// is polled rather than subscribed to. Session chat threads are short-lived
/// and small, so [refresh] simply walks every page from the start rather
/// than maintaining an incremental cursor.
class ChatListNotifier extends FamilyAsyncNotifier<List<ChatMessage>, int> {
  @override
  Future<List<ChatMessage>> build(int sessionId) => _fetchAll(sessionId);

  Future<void> refresh() async {
    final messages = await _fetchAll(arg);
    state = AsyncValue.data(messages);
  }

  Future<void> send(String message) async {
    final sent = await ref.read(sessionRepositoryProvider).sendChat(arg, message: message);
    final current = state.valueOrNull ?? [];
    state = AsyncValue.data([...current, sent]);
  }

  Future<void> markRead() => ref.read(sessionRepositoryProvider).markChatRead(arg);

  Future<List<ChatMessage>> _fetchAll(int sessionId) async {
    final repository = ref.read(sessionRepositoryProvider);
    final messages = <ChatMessage>[];
    var page = 1;
    while (true) {
      final result = await repository.fetchChat(sessionId, page: page);
      messages.addAll(result.data);
      if (!result.hasMore) break;
      page = result.currentPage + 1;
    }
    return messages;
  }
}

final chatListProvider =
    AsyncNotifierProvider.family<ChatListNotifier, List<ChatMessage>, int>(ChatListNotifier.new);

final unreadChatCountProvider = FutureProvider.family<int, int>((ref, sessionId) {
  return ref.read(sessionRepositoryProvider).fetchUnreadCount(sessionId);
});
