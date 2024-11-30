import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/register/data/data_source/remote/abstract_remote_register_api.dart';
import 'package:mobile_app/src/features/register/domain/models/register_request/register_request.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class RemoteRegisterApiImpl implements AbstractRemoteRegisterApi {
  final Dio _dio;
  RemoteRegisterApiImpl(Dio dio) : _dio = dio;

  @override
  Future<Either<AppException, ApiResponse<void>>> register(
      RegisterRequestDTO request) async {
    try {
      final response = await _dio.post('/register', data: request.toJson());
      return Helper.handleSuccessResponse<void>(response, 201);
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }
}
