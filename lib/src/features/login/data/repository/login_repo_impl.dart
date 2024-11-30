import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
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
  Future<Either<AppFailure, User>> login(LoginRequestDTO requestPayload) async {
    try {
      final normalizedPhoneNumber =
          Helper.normalizePhoneNumber(requestPayload.phone);
      final LoginRequestDTO normalizedRequestPayload =
          requestPayload.copyWith(phone: normalizedPhoneNumber);
      final user = await _remoteLoginApi.login(normalizedRequestPayload);
      return user.fold((AppException e) => mapExceptionToFailure(e),
          (ApiResponse<User> response) async {
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
