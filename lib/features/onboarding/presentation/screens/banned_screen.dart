import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../auth/domain/auth_state.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

class BannedScreen extends ConsumerStatefulWidget {
  const BannedScreen({super.key});

  @override
  ConsumerState<BannedScreen> createState() => _BannedScreenState();
}

class _BannedScreenState extends ConsumerState<BannedScreen> {
  bool _isRefreshing = false;

  Future<void> _refresh() async {
    setState(() => _isRefreshing = true);
    try {
      await ref.read(authProvider.notifier).refreshUser();
      if (mounted && ref.read(authProvider) is AuthAccountIssue) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Your account is still banned.')),
        );
      }
    } finally {
      if (mounted) setState(() => _isRefreshing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  label: 'Refresh status',
                  outlined: true,
                  isLoading: _isRefreshing,
                  onPressed: _refresh,
                ),
                const SizedBox(height: 8),
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
