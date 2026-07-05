/// Client-side sanity checks only — never authoritative. The server's
/// `RegisterRequest`/`LoginRequest` validation is always the final word;
/// these exist purely to give immediate UI feedback before a round trip.
class Validators {
  const Validators._();

  static final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  static bool isValidEmail(String value) => _emailPattern.hasMatch(value.trim());

  static bool isValidPassword(String value) => value.length >= 8;

  static String? requiredField(String? value, {String label = 'This field'}) {
    if (value == null || value.trim().isEmpty) return '$label is required.';
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) return 'Email is required.';
    if (!isValidEmail(value)) return 'Enter a valid email address.';
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return 'Password is required.';
    if (!isValidPassword(value)) return 'Password must be at least 8 characters.';
    return null;
  }
}
