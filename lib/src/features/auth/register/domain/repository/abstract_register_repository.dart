import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/auth/register/domain/models/register_request/register_request.dart';

abstract class AbstractRegisterRepository {
  //this should not return a repository
  //rather it should return some kind of boolean value indication that
  //the registration was successful or not and whether otp has been sent or not
  Future<Either<AppFailure, String>> register(RegisterRequestDTO request);
}
