import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSubmitting = false;
  Failure? _failure;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _isSubmitting = true;
      _failure = null;
    });
    try {
      await ref.read(authProvider.notifier).login(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          );
      // Router's redirect picks up the new AuthState and lands on the
      // correct role home / account-status interstitial automatically.
    } catch (error) {
      setState(() => _failure = Failure.fromError(error));
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // A 422 on login (banned/suspended) lands on the `email` field — same
    // shape as a plain "invalid credentials" error, so both render inline.
    final emailError = _failure?.firstErrorFor('email');
    final generalError = emailError == null ? _failure?.message : null;

    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              Text('Welcome back', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 24),
              AppTextField(
                label: 'Email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                errorText: emailError,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: 'Password',
                controller: _passwordController,
                obscureText: true,
                autofillHints: const [AutofillHints.password],
              ),
              if (generalError != null) ...[
                const SizedBox(height: 12),
                Text(generalError, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ],
              const SizedBox(height: 24),
              AppButton(label: 'Log in', isLoading: _isSubmitting, onPressed: _submit),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.push(RoutePaths.forgotPassword),
                child: const Text('Forgot your password?'),
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => context.push(RoutePaths.registerRole),
                    child: const Text('Sign up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
