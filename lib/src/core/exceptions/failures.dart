abstract class AppFailure {
  final String message;

  AppFailure({required this.message});
}

class NetworkFailure extends AppFailure {
  NetworkFailure({required String message}) : super(message: message);
}

class ServerFailure extends AppFailure {
  final int? statusCode;

  ServerFailure({required String message, this.statusCode})
      : super(message: message);
}

class ValidationFailure extends AppFailure {
  final Map<String, List<String>> validationErrors;

  ValidationFailure({required String message, required this.validationErrors})
      : super(message: message);
}

class UnexpectedFailure extends AppFailure {
  UnexpectedFailure({required String message}) : super(message: message);
}
