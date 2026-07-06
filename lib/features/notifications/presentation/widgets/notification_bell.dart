import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/notification_provider.dart';
import '../screens/notifications_screen.dart';

class NotificationBell extends ConsumerWidget {
  const NotificationBell({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unreadCount = ref.watch(notificationListProvider).maybeWhen(
          data: (result) => result.unreadCount,
          orElse: () => 0,
        );

    return Stack(
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          tooltip: 'Notifications',
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const NotificationsScreen()),
          ),
        ),
        if (unreadCount > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.error, shape: BoxShape.circle),
              constraints: const BoxConstraints(minWidth: 14, minHeight: 14),
              child: Text(
                unreadCount > 9 ? '9+' : '$unreadCount',
                style: const TextStyle(color: Colors.white, fontSize: 9),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
