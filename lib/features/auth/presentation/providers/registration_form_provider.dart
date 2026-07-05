import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/registration_form_state.dart';
import 'auth_provider.dart';

class RegistrationFormNotifier extends Notifier<RegistrationFormState> {
  @override
  RegistrationFormState build() => const RegistrationFormState();

  void setRole(String role) => state = state.copyWith(role: role);

  void setDetails({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    String? timezone,
  }) {
    state = state.copyWith(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
      timezone: timezone ?? state.timezone,
    );
  }

  void setConsent({required bool termsAccepted, required bool privacyAccepted}) {
    state = state.copyWith(termsAccepted: termsAccepted, privacyAccepted: privacyAccepted);
  }

  /// Throws [ValidationException] on a 422 so the consent screen can route
  /// back to whichever step owns the offending field (e.g. `email` taken).
  Future<void> submit() async {
    state = state.copyWith(isSubmitting: true, fieldErrors: null);
    try {
      await ref.read(authProvider.notifier).register(
            role: state.role!,
            name: state.name,
            email: state.email,
            password: state.password,
            passwordConfirmation: state.passwordConfirmation,
            timezone: state.timezone,
            termsAccepted: state.termsAccepted,
            privacyAccepted: state.privacyAccepted,
          );
      state = state.copyWith(isSubmitting: false);
    } catch (error) {
      final fieldErrors = error is ValidationException ? error.errors : null;
      state = state.copyWith(isSubmitting: false, fieldErrors: fieldErrors);
      rethrow;
    }
  }

  void reset() => state = const RegistrationFormState();
}

final registrationFormProvider =
    NotifierProvider<RegistrationFormNotifier, RegistrationFormState>(
  RegistrationFormNotifier.new,
);
