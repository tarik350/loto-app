import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/features/auth/domain/models/user/user.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

abstract class AbstractAuthRemoteApi {
  Future<Either<AppException, ApiResponse<User>>> login(
      {required String phone, required String password});
  // Future<Either<Exception, GenericResponse<Map<String, Object>>>> register(
  //     RegisterRequest request);
  // Future<Either<Exception, GenericResponse<User>>> verifyOtp(
  //     {required int userId, required String otp});
  // Future<Either<Exception, GenericResponse<bool>>> forgotPassword(
  //     {required String phone});
}
