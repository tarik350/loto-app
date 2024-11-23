import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/local/abstract_auth_local_api.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/remote/abstract_auth_remote_api.dart';
import 'package:mobile_app/src/features/auth/domain/models/user/user.dart';
import 'package:mobile_app/src/features/auth/domain/repository/abstract_auth_repository.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class AuthRepoImpl extends AbstractAuthRepository {
  final AbstractAuthRemoteApi _authRemoteApi;
  final AbstractAuthLocalApi _authLocalApi;
  AuthRepoImpl(
      {required AbstractAuthRemoteApi authRemoteApi,
      required AbstractAuthLocalApi authLocalApi})
      : _authRemoteApi = authRemoteApi,
        _authLocalApi = authLocalApi;

  @override
  Future<Either<AppFailure, User>> login(
      {required String phone, required String password}) async {
    try {
      final user = await _authRemoteApi.login(phone: phone, password: password);
      return user.fold((AppException e) {
        if (e is ValidationException) {
          return left(ValidationFailure(
              message: e.message, validationErrors: e.validationErrors));
        } else if (e is ServerException) {
          return left(ServerFailure(message: e.message));
        } else if (e is NetworkException) {
          return left(NetworkFailure(message: e.message));
        } else {
          return left(UnexpectedFailure(message: e.message));
        }
      }, (ApiResponse<User> response) async {
        await _authLocalApi.saveUserModel(response.data as User);
        await _authLocalApi.saveToken(response.data?.token ?? '');
        await _authLocalApi.saveRefreshToken(response.data?.refreshToken ?? "");
        await _authLocalApi.setUserAuthenticated(true);
        return right(response.data as User);
      });
    } catch (e) {
      rethrow;
    }
  }
}
