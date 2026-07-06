import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_paths.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../providers/registration_form_provider.dart';

class RegisterDetailsScreen extends ConsumerStatefulWidget {
  const RegisterDetailsScreen({super.key});

  @override
  ConsumerState<RegisterDetailsScreen> createState() => _RegisterDetailsScreenState();
}

class _RegisterDetailsScreenState extends ConsumerState<RegisterDetailsScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  String? _error;

  @override
  void initState() {
    super.initState();
    final draft = ref.read(registrationFormProvider);
    _nameController.text = draft.name;
    _emailController.text = draft.email;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  void _continue() {
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    final confirm = _confirmController.text;

    final error = Validators.requiredField(name, label: 'Name') ??
        Validators.email(email) ??
        Validators.password(password) ??
        (password != confirm ? 'Passwords do not match.' : null);

    if (error != null) {
      setState(() => _error = error);
      return;
    }

    ref.read(registrationFormProvider.notifier).setDetails(
          name: name,
          email: email,
          password: password,
          passwordConfirmation: confirm,
        );
    context.push(RoutePaths.registerConsent);
  }

  @override
  Widget build(BuildContext context) {
    final role = ref.watch(registrationFormProvider).role;
    if (role == null) {
      // Reached directly without picking a role (e.g. deep link) — bounce back.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) context.go(RoutePaths.registerRole);
      });
      return const Scaffold(body: SizedBox.shrink());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Your details')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(child: AppLogo(size: 64)),
              const SizedBox(height: 24),
              AppTextField(label: 'Full name', controller: _nameController),
              const SizedBox(height: 16),
              AppTextField(
                label: 'Email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              AppTextField(label: 'Password', controller: _passwordController, obscureText: true),
              const SizedBox(height: 16),
              AppTextField(
                label: 'Confirm password',
                controller: _confirmController,
                obscureText: true,
              ),
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
              ],
              const SizedBox(height: 24),
              AppButton(label: 'Next', onPressed: _continue),
            ],
          ),
        ),
      ),
    );
  }
}
