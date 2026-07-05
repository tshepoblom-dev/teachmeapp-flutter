import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_form_state.freezed.dart';

/// In-progress data for the 3-step registration wizard. Deliberately
/// separate from [AuthState] so the wizard's draft fields never leak into
/// the app's authenticated/unauthenticated binary state.
@freezed
class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    String? role, // 'student' | 'tutor'
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String passwordConfirmation,
    String? timezone,
    @Default(false) bool termsAccepted,
    @Default(false) bool privacyAccepted,
    @Default(false) bool isSubmitting,
    Map<String, List<String>>? fieldErrors,
  }) = _RegistrationFormState;
}
