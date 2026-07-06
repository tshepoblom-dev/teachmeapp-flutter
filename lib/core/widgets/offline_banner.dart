import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../connectivity/connectivity_provider.dart';
import '../theme/app_radius.dart';

/// Wraps [child] with a slim "You're offline" banner pinned to the top of
/// the screen whenever connectivity drops. Mounted once in `app.dart` via
/// `MaterialApp.router`'s `builder` so every screen gets it for free.
class OfflineBanner extends ConsumerWidget {
  const OfflineBanner({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOnline = ref.watch(isOnlineProvider).valueOrNull ?? true;

    return Stack(
      children: [
        child,
        if (!isOnline)
          Positioned(
            top: 8,
            left: 16,
            right: 16,
            child: SafeArea(
              bottom: false,
              child: Material(
                color: Theme.of(context).colorScheme.error,
                elevation: 3,
                borderRadius: BorderRadius.circular(AppRadius.pill),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.wifi_off, size: 14, color: Colors.white),
                      SizedBox(width: 6),
                      Text(
                        "You're offline",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
