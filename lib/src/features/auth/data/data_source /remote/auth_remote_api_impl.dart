import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/remote/abstract_auth_remote_api.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class AuthRemoteApiImpl extends AbstractAuthRemoteApi {
  final Dio _dio;
  AuthRemoteApiImpl({required Dio dio}) : _dio = dio;

  @override
  Future<Either<AppException, ApiResponse<User>>> login({
    required String phone,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {'phone': phone, 'password': password},
      );
      //the response does not produce any exception
      //but there is still possibility of some exceptional situations like
      //what if the server responds with an empty response body
      //what if the server responds with a strange status code but not qualified to be thrown
      //as an exception. dio considers a response as an exception based validateStatus method logic
      // in our app we have made the logic to return true on 2xx meaning 299 won't be considered a bad response
      //but i have to make sure if there is nothing wrong the server is reponding with status code of 200
      //all this is to say the there is a possiblity of left being returned from the handle success response method
      return Helper.handleSuccessResponse<User>(response, 200,
          (Object? json) => User.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }
}
