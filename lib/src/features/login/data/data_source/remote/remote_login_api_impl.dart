import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/login/data/data_source/remote/abstract_remote_login_api.dart';
import 'package:mobile_app/src/features/login/domain/models/login_request/login_request_model.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class RemoteLoginApiImpl implements AbstractRemoteLoginApi {
  final Dio _dio;
  RemoteLoginApiImpl(Dio dio) : _dio = dio;

  @override
  Future<Either<AppException, ApiResponse<User>>> login(
      LoginRequestDTO request) async {
    try {
      final response = await _dio.post(
        '/login',
        data: request.toJson(),
      );

      return Helper.handleSuccessResponse<User>(response, 200,
          fromTJson: (Object? json) =>
              User.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }
}
