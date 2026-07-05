import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/widgets/app_button.dart';
import '../providers/auth_provider.dart';

/// Soft nudge, not a router gate — no API route actually blocks on
/// unverified email, so the user can always continue past this screen.
class EmailVerifyPendingScreen extends ConsumerStatefulWidget {
  const EmailVerifyPendingScreen({super.key});

  @override
  ConsumerState<EmailVerifyPendingScreen> createState() =>
      _EmailVerifyPendingScreenState();
}

class _EmailVerifyPendingScreenState extends ConsumerState<EmailVerifyPendingScreen> {
  Timer? _pollTimer;
  Timer? _cooldownTimer;
  int _resendCooldown = 0;
  bool _verified = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _checkStatus();
    _pollTimer = Timer.periodic(const Duration(seconds: 10), (_) => _checkStatus());
  }

  @override
  void dispose() {
    _pollTimer?.cancel();
    _cooldownTimer?.cancel();
    super.dispose();
  }

  Future<void> _checkStatus() async {
    try {
      final verified = await ref.read(authRepositoryProvider).isEmailVerified();
      if (mounted && verified) {
        setState(() => _verified = true);
        _pollTimer?.cancel();
      }
    } catch (_) {
      // Silent — this is a background poll, not a user-initiated action.
    }
  }

  Future<void> _resend() async {
    setState(() => _error = null);
    try {
      await ref.read(authRepositoryProvider).resendVerificationEmail();
      _startCooldown();
    } catch (error) {
      setState(() => _error = Failure.fromError(error).message);
    }
  }

  void _startCooldown() {
    setState(() => _resendCooldown = 60);
    _cooldownTimer?.cancel();
    _cooldownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendCooldown <= 1) {
        timer.cancel();
        setState(() => _resendCooldown = 0);
      } else {
        setState(() => _resendCooldown--);
      }
    });
  }

  void _continue() {
    final role = ref.read(authProvider).maybeWhen(
          authenticated: (user) => user.role,
          accountIssue: (user, _, __) => user.role,
          orElse: () => 'student',
        );
    context.go(role == 'tutor' ? RoutePaths.tutorHome : RoutePaths.studentHome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify your email')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                _verified ? Icons.mark_email_read_outlined : Icons.mark_email_unread_outlined,
                size: 56,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 16),
              Text(
                _verified
                    ? 'Your email is verified!'
                    : "We've sent a verification link to your email. Check your inbox to confirm your address.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ],
              const SizedBox(height: 24),
              if (!_verified)
                AppButton(
                  label: _resendCooldown > 0
                      ? 'Resend available in ${_resendCooldown}s'
                      : 'Resend verification email',
                  outlined: true,
                  onPressed: _resendCooldown > 0 ? null : _resend,
                ),
              const SizedBox(height: 12),
              AppButton(
                label: _verified ? 'Continue' : 'Skip for now',
                onPressed: _continue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
