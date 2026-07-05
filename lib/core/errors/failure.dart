import '../network/api_exception.dart';

/// Flattened, UI-facing view of an [AppException].
///
/// Screens render `message`/`fieldErrors` directly rather than
/// pattern-matching the sealed [AppException] themselves, keeping widgets
/// free of network-layer types.
class Failure {
  const Failure({
    required this.message,
    this.fieldErrors,
    this.code,
  });

  final String message;
  final Map<String, List<String>>? fieldErrors;
  final String? code;

  String? firstErrorFor(String field) {
    final messages = fieldErrors?[field];
    if (messages == null || messages.isEmpty) return null;
    return messages.first;
  }

  factory Failure.fromAppException(AppException exception) {
    return switch (exception) {
      NetworkException(message: final m) => Failure(message: m),
      UnauthenticatedException(message: final m) => Failure(message: m),
      ForbiddenException(message: final m, code: final c) => Failure(message: m, code: c),
      ValidationException(message: final m, errors: final e) =>
        Failure(message: m, fieldErrors: e),
      NotFoundException(message: final m) => Failure(message: m),
      ServerException(message: final m) => Failure(message: m),
      UnknownException(message: final m) => Failure(message: m),
    };
  }

  factory Failure.fromError(Object error) {
    if (error is AppException) return Failure.fromAppException(error);
    return Failure(message: error.toString());
  }
}
