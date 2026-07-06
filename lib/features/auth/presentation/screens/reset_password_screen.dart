import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../providers/auth_provider.dart';

/// Reached either via the password-reset email's deep link (`email`/`token`
/// query params pre-filled) or manually if the user already has a token.
class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key, this.initialEmail, this.initialToken});

  final String? initialEmail;
  final String? initialToken;

  @override
  ConsumerState<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  late final _emailController = TextEditingController(text: widget.initialEmail);
  late final _tokenController = TextEditingController(text: widget.initialToken);
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  bool _isSubmitting = false;
  String? _error;

  @override
  void dispose() {
    _emailController.dispose();
    _tokenController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _isSubmitting = true;
      _error = null;
    });
    try {
      await ref.read(authRepositoryProvider).resetPassword(
            email: _emailController.text.trim(),
            token: _tokenController.text.trim(),
            password: _passwordController.text,
            passwordConfirmation: _confirmController.text,
          );
      if (mounted) context.go(RoutePaths.login);
    } catch (error) {
      setState(() => _error = Failure.fromError(error).message);
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Set a new password')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(child: AppLogo(size: 64)),
              const SizedBox(height: 24),
              AppTextField(
                label: 'Email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              AppTextField(label: 'Reset token', controller: _tokenController),
              const SizedBox(height: 16),
              AppTextField(label: 'New password', controller: _passwordController, obscureText: true),
              const SizedBox(height: 16),
              AppTextField(
                label: 'Confirm new password',
                controller: _confirmController,
                obscureText: true,
              ),
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ],
              const SizedBox(height: 24),
              AppButton(label: 'Reset password', isLoading: _isSubmitting, onPressed: _submit),
            ],
          ),
        ),
      ),
    );
  }
}
