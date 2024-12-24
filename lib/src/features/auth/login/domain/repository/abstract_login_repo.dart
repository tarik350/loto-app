import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/login_request/login_request_model.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/user/user.dart';

abstract class AbstractLoginRepository {
  Future<Either<AppFailure, User>> login(LoginRequestDTO requestPayload);
}
