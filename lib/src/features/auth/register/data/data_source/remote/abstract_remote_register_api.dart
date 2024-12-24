import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/features/auth/register/domain/models/register_request/register_request.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

abstract class AbstractRemoteRegisterApi {
  Future<Either<AppException, ApiResponse<void>>> register(
      RegisterRequestDTO request);
}
