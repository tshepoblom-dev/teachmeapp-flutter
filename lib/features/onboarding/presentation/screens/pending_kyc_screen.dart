import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_paths.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../auth/domain/auth_state.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

/// Reached when `CheckAccountStatus` returns `code: 'pending_kyc'` on an
/// authenticated call.
class PendingKycScreen extends ConsumerStatefulWidget {
  const PendingKycScreen({super.key});

  @override
  ConsumerState<PendingKycScreen> createState() => _PendingKycScreenState();
}

class _PendingKycScreenState extends ConsumerState<PendingKycScreen> {
  bool _isRefreshing = false;

  Future<void> _refresh() async {
    setState(() => _isRefreshing = true);
    try {
      await ref.read(authProvider.notifier).refreshUser();
      if (mounted && ref.read(authProvider) is AuthAccountIssue) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Your verification is still pending.')),
        );
      }
    } finally {
      if (mounted) setState(() => _isRefreshing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.verified_user_outlined, size: 56, color: Colors.blueAccent),
                const SizedBox(height: 16),
                Text(
                  'Your account is pending KYC verification.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  "You'll be able to accept bookings once your identity verification is approved.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                AppButton(
                  label: 'Complete verification',
                  onPressed: () => context.push(RoutePaths.kyc),
                ),
                const SizedBox(height: 8),
                AppButton(
                  label: 'Refresh status',
                  outlined: true,
                  isLoading: _isRefreshing,
                  onPressed: _refresh,
                ),
                const SizedBox(height: 8),
                AppButton(
                  label: 'Log out',
                  outlined: true,
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
