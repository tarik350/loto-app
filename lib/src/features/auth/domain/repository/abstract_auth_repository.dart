import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/auth/domain/models/user/user.dart';

abstract class AbstractAuthRepository {
  Future<Either<AppFailure, User>> login(
      {required String phone, required String password});
}
