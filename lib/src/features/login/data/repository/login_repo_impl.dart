import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/login/data/data_source/remote/abstract_remote_login_api.dart';
import 'package:mobile_app/src/features/login/domain/models/login_request/login_request_model.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/features/login/domain/repository/abstract_login_repo.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class LoginRepoImpl implements AbstractLoginRepository {
  final AbstractRemoteLoginApi _remoteLoginApi;
  final AbstractLocalLoginApi _localLoginApi;
  LoginRepoImpl(
      {required AbstractRemoteLoginApi remoteLoginApi,
      required AbstractLocalLoginApi localLoginApi})
      : _remoteLoginApi = remoteLoginApi,
        _localLoginApi = localLoginApi;

  @override
  Future<Either<AppFailure, User>> login(
      LoginRequestModel loginRequestPayload) async {
    try {
      final (String phone, String password) =
          (loginRequestPayload.phone, loginRequestPayload.password);
      final user =
          await _remoteLoginApi.login(phone: phone, password: password);
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
        await _localLoginApi.saveUserModel(response.data as User);
        await _localLoginApi.saveToken(response.data?.token ?? '');
        await _localLoginApi
            .saveRefreshToken(response.data?.refreshToken ?? "");
        await _localLoginApi.setUserAuthenticated(true);
        return right(response.data as User);
      });
    } catch (e) {
      rethrow;
    }
  }
}
