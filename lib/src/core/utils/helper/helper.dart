import 'dart:math';
import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class Helper {
  //generic method for serailzing json responses
  static Future<Either<AppException, ApiResponse<T>>> handleSuccessResponse<T>(
    Response response,
    int successCode, {
    T Function(Object?)? fromTJson,
  }) async {
    if (response.data == null) {
      return left(UnexpectedException(
        message: "Empty response body from the server.",
      ));
    }

    try {
      if (response.statusCode == successCode) {
        final ApiResponse<T> data = ApiResponse<T>.fromJson(
          response.data,
          fromTJson ?? ((json) => null as T),
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

  static String normalizePhoneNumber(String phone) {
    if (!RegExp(r'^[97]\d{8}$').hasMatch(phone)) {
      throw const FormatException(
          'Phone number must start with 9 or 7 and be 9 digits long');
    }
    return '+251$phone';
  }

// Function to get a random color
  static Color getRandomColor() {
    List<Color> availableColors = [
      AppColors.lavenderPurple,
      AppColors.skyBlue,
      AppColors.mintGreen
    ];
    final random = Random();
    return availableColors[random.nextInt(availableColors.length)];
  }

  //generate color given a decimal
  static Color decimalToColor(int decimal) {
    final int argbValue = 0xFF000000 | decimal;
    return Color(argbValue);
  }
}
