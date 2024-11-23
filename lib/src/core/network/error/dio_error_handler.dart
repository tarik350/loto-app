import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';

AppException handleDioException(DioException e) {
  final dioExceptionMap = {
    DioExceptionType.connectionTimeout: NetworkException(
      message: "Connection timed out. Please try again.",
    ),
    DioExceptionType.receiveTimeout: NetworkException(
      message: "Server response timed out. Please try again later.",
    ),
    DioExceptionType.sendTimeout: NetworkException(
      message: "Request timed out. Please check your connection.",
    ),
    DioExceptionType.cancel: NetworkException(
      message: "Request was cancelled. Please try again.",
    ),
    DioExceptionType.unknown: NetworkException(
      message: "An unknown error occurred. Please check your connection.",
    ),
  };

  if (e.type == DioExceptionType.badResponse) {
    return handleServerException(e.response, e.response?.statusCode);
  }

  return dioExceptionMap[e.type] ??
      NetworkException(message: "Unexpected Dio error: ${e.message}");
}

AppException handleServerException(
    Response<dynamic>? response, int? statusCode) {
  final serverExceptionMap = {
    400: 'Bad Request. Please check the request parameters.',
    401: 'Unauthorized. Please check your credentials.',
    403: 'Forbidden. You do not have permission to access this resource.',
    404: 'Not Found. The requested resource could not be found.',
    405:
        'Method Not Allowed. The HTTP method is not allowed for the requested resource.',
    408: 'Request Timeout. The server timed out waiting for the request.',
    500: 'Internal Server Error. Something went wrong on the server.',
    502:
        'Bad Gateway. The server received an invalid response from an upstream server.',
    503: 'Service Unavailable. The server is temporarily unavailable.',
    504:
        'Gateway Timeout. The server did not receive a timely response from an upstream server.',
  };
  if (statusCode == 422) {
    return ValidationException.fromJson(response?.data);
  }

  return ServerException(
    message: response?.data.containsKey('message')
        ? response?.data['message']
        : serverExceptionMap[statusCode] ?? 'Unexpected server error occurred.',
    statusCode: statusCode ?? 500,
    responseBody: response?.data,
  );
}
