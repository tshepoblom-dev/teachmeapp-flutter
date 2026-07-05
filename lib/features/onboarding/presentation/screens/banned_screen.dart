import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

class BannedScreen extends ConsumerWidget {
  const BannedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    final message = state.maybeWhen(
      accountIssue: (_, __, message) => message,
      orElse: () => 'Your account has been permanently banned.',
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.block, size: 56, color: Colors.redAccent),
                const SizedBox(height: 16),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Contact support if you believe this is a mistake.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                AppButton(
                  label: 'Log out',
                  onPressed: () => ref.read(authProvider.notifier).logout(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
