import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../connectivity/connectivity_provider.dart';

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
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              bottom: false,
              child: Material(
                color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
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
