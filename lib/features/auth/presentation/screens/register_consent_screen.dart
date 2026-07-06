import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/router/route_paths.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_logo.dart';
import '../providers/registration_form_provider.dart';

class RegisterConsentScreen extends ConsumerStatefulWidget {
  const RegisterConsentScreen({super.key});

  @override
  ConsumerState<RegisterConsentScreen> createState() => _RegisterConsentScreenState();
}

class _RegisterConsentScreenState extends ConsumerState<RegisterConsentScreen> {
  bool _isSubmitting = false;
  String? _generalError;

  Future<void> _submit() async {
    setState(() {
      _isSubmitting = true;
      _generalError = null;
    });
    try {
      await ref.read(registrationFormProvider.notifier).submit();
      if (mounted) context.go(RoutePaths.emailVerifyPending);
    } catch (error) {
      final failure = Failure.fromError(error);
      // A duplicate-email 422 belongs on step 2, not here.
      if (failure.fieldErrors?.containsKey('email') == true) {
        if (mounted) context.go(RoutePaths.registerDetails);
        return;
      }
      setState(() => _generalError = failure.message);
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final draft = ref.watch(registrationFormProvider);
    final notifier = ref.read(registrationFormProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Terms & privacy')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(child: AppLogo(size: 64)),
              const SizedBox(height: 24),
              Text(
                'Almost there — please review and accept our terms.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              CheckboxListTile(
                value: draft.termsAccepted,
                title: const Text('I accept the Terms of Service'),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) => notifier.setConsent(
                  termsAccepted: value ?? false,
                  privacyAccepted: draft.privacyAccepted,
                ),
              ),
              CheckboxListTile(
                value: draft.privacyAccepted,
                title: const Text('I accept the Privacy Policy'),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) => notifier.setConsent(
                  termsAccepted: draft.termsAccepted,
                  privacyAccepted: value ?? false,
                ),
              ),
              if (_generalError != null) ...[
                const SizedBox(height: 12),
                Text(
                  _generalError!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
              const SizedBox(height: 24),
              AppButton(
                label: 'Create account',
                isLoading: _isSubmitting,
                onPressed: draft.termsAccepted && draft.privacyAccepted ? _submit : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
