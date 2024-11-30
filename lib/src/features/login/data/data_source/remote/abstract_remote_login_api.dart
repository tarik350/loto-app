import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/features/login/domain/models/login_request/login_request_model.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

abstract class AbstractRemoteLoginApi {
  Future<Either<AppException, ApiResponse<User>>> login(
      LoginRequestDTO request);
}
