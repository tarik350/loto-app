import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/register/data/data_source/local/abstract_local_register_api.dart';
import 'package:mobile_app/src/features/register/data/data_source/remote/abstract_remote_register_api.dart';
import 'package:mobile_app/src/features/register/domain/models/register_request/register_request.dart';
import 'package:mobile_app/src/features/register/domain/repository/abstract_register_repository.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class RegisterRepoImpl implements AbstractRegisterRepository {
  final AbstractRemoteRegisterApi _remoteRegisterApi;
  final AbstractLocalRegisterApi _localRegisterApi;

  RegisterRepoImpl(
      {required AbstractRemoteRegisterApi remoteRegisterApi,
      required AbstractLocalRegisterApi localRegisterApi})
      : _remoteRegisterApi = remoteRegisterApi,
        _localRegisterApi = localRegisterApi;

  @override
  Future<Either<AppFailure, String>> register(
      RegisterRequestDTO request) async {
    final normalizedPhoneNumber =
        Helper.normalizePhoneNumber(request.phoneNumber);
    final RegisterRequestDTO normalizedRequestPayload =
        request.copyWith(phoneNumber: normalizedPhoneNumber);
    final response =
        await _remoteRegisterApi.register(normalizedRequestPayload);
    return response.fold((AppException e) => mapExceptionToFailure(e),
        (ApiResponse<void> res) async {
      await _localRegisterApi.saveUserPhoneNumber(normalizedPhoneNumber);
      return right(res.message ?? "OTP sent successfully");
    });
  }
}
