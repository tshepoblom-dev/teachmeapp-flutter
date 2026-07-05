import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../kyc/presentation/screens/kyc_screen.dart';

/// Reached when `CheckAccountStatus` returns `code: 'pending_kyc'` on an
/// authenticated call.
class PendingKycScreen extends ConsumerWidget {
  const PendingKycScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const KycScreen()),
                  ),
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
