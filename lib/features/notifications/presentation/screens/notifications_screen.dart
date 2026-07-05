import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../domain/app_notification.dart';
import '../providers/notification_provider.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(notificationListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          TextButton(
            onPressed: () => ref.read(notificationListProvider.notifier).markAllRead(),
            child: const Text('Mark all read'),
          ),
        ],
      ),
      body: result.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          failure: Failure.fromError(error),
          onRetry: () => ref.read(notificationListProvider.notifier).refresh(),
        ),
        data: (data) {
          if (data.notifications.isEmpty) {
            return const EmptyState(
              message: 'No notifications yet.',
              icon: Icons.notifications_none,
            );
          }
          return RefreshIndicator(
            onRefresh: () async => ref.read(notificationListProvider.notifier).refresh(),
            child: ListView.builder(
              itemCount: data.notifications.length + (data.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= data.notifications.length) {
                  ref.read(notificationListProvider.notifier).loadMore();
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return _NotificationTile(notification: data.notifications[index]);
              },
            ),
          );
        },
      ),
    );
  }
}

class _NotificationTile extends ConsumerWidget {
  const _NotificationTile({required this.notification});

  final AppNotification notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      tileColor: notification.isUnread
          ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.05)
          : null,
      leading: Icon(
        notification.isUnread ? Icons.circle : Icons.circle_outlined,
        size: 12,
        color: notification.isUnread ? Theme.of(context).colorScheme.primary : Colors.transparent,
      ),
      title: Text(notification.message),
      subtitle: Text(DateTimeFormatter.dateTimeLabel(notification.createdAt)),
      onTap: () async {
        if (notification.isUnread) {
          await ref.read(notificationListProvider.notifier).markRead(notification.id);
        }
        if (!context.mounted) return;
        final sessionId = notification.sessionId;
        final bookingId = notification.bookingId;
        if (sessionId != null) {
          context.push(RoutePaths.liveSession(sessionId));
        } else if (bookingId != null) {
          context.push(RoutePaths.bookingDetail(bookingId));
        }
      },
    );
  }
}
