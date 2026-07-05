import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../data/notification_api.dart';
import '../../data/notification_repository.dart';
import '../../domain/app_notification.dart';

final notificationApiProvider =
    Provider<NotificationApi>((ref) => NotificationApi(ref.watch(dioProvider)));

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepository(ref.watch(notificationApiProvider));
});

class NotificationListResult {
  const NotificationListResult({
    required this.notifications,
    required this.hasMore,
    required this.page,
  });

  final List<AppNotification> notifications;
  final bool hasMore;
  final int page;

  int get unreadCount => notifications.where((n) => n.isUnread).length;
}

class NotificationListNotifier extends AsyncNotifier<NotificationListResult> {
  @override
  Future<NotificationListResult> build() async {
    final page = await ref.read(notificationRepositoryProvider).fetchNotifications();
    return NotificationListResult(
      notifications: page.data,
      hasMore: page.hasMore,
      page: page.currentPage,
    );
  }

  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null || !current.hasMore) return;

    final next = await ref
        .read(notificationRepositoryProvider)
        .fetchNotifications(page: current.page + 1);

    state = AsyncValue.data(NotificationListResult(
      notifications: [...current.notifications, ...next.data],
      hasMore: next.hasMore,
      page: next.currentPage,
    ));
  }

  Future<void> markRead(String id) async {
    await ref.read(notificationRepositoryProvider).markRead(id);
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncValue.data(NotificationListResult(
      notifications: [
        for (final n in current.notifications)
          if (n.id == id) n.copyWith(readAt: DateTime.now()) else n,
      ],
      hasMore: current.hasMore,
      page: current.page,
    ));
  }

  Future<void> markAllRead() async {
    await ref.read(notificationRepositoryProvider).markAllRead();
    ref.invalidateSelf();
  }

  void refresh() => ref.invalidateSelf();
}

final notificationListProvider =
    AsyncNotifierProvider<NotificationListNotifier, NotificationListResult>(
  NotificationListNotifier.new,
);
