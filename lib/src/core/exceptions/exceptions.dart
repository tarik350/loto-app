class AppException implements Exception {
  final String message;

  AppException({required this.message});

  @override
  String toString() => message;
}

class ServerException extends AppException {
  final int statusCode;
  final Object? responseBody;

  ServerException(
      {required this.statusCode, required String message, this.responseBody})
      : super(message: message);

  factory ServerException.fromJson(Map<String, dynamic> json) =>
      ServerException(
          message: json['message'],
          responseBody: json['data'],
          statusCode: json['statusCode']);
}

class ValidationException extends AppException {
  final Map<String, List<String>> validationErrors;

  ValidationException({
    required String message,
    required this.validationErrors,
  }) : super(message: message);

  factory ValidationException.fromJson(Map<String, dynamic> json) {
    final errors = (json['error'] as Map<String, dynamic>).map(
      (key, value) => MapEntry(key, List<String>.from(value as List)),
    );
    return ValidationException(
      message: json['message'] ?? "Validation Error",
      validationErrors: errors,
    );
  }
}

class UnexpectedException extends AppException {
  final dynamic error;

  UnexpectedException({
    String message = 'An unexpected error occurred.',
    this.error,
  }) : super(message: message);
}

class NetworkException extends AppException {
  NetworkException({required String message}) : super(message: message);
}
