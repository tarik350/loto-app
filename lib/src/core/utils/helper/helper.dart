import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class Helper {
  static Future<Either<AppException, ApiResponse<T>>> handleSuccessResponse<T>(
    Response response,
    //to make this method trully generic it should work no matter the response succes status is
    //some endpoint may reutrn 201 or 204 as a success
    //so this function by itself is not aware of what success mean
    //so it relies on the caller function to provide the success condition
    int successCode,
    T Function(Object?) fromTJson,
  ) async {
    // Check if the response data is null
    if (response.data == null) {
      return left(UnexpectedException(
        message: "Empty response body from the server.",
      ));
    }

    try {
      if (response.statusCode == successCode) {
        final ApiResponse<T> data = ApiResponse<T>.fromJson(
          response.data,
          fromTJson,
        );
        return right(data);
      } else {
        return left(handleServerException(response, response.statusCode));
      }
    } catch (e) {
      return left(UnexpectedException(
        message: "Error parsing response data: ${e.toString()}",
      ));
    }
  }
}
