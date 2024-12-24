import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/game/data/data_source/remote/abstract_remote_game_api.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

class RemoteGameApiImpl extends AbstractRemoteGameApi {
  final Dio _dio;

  RemoteGameApiImpl({required Dio dio}) : _dio = dio;
  @override
  Future<Either<AppException, ApiResponse<List<Ticket>>>> getGameTickets(
      int gameId) async {
    try {
      final response = await _dio.get('game/tickets', data: {'gameId': gameId});
      return Helper.handleSuccessResponse(response, 200,
          fromTJson: (json) => (json as List<dynamic>)
              .map((ticketJson) =>
                  Ticket.fromJson(ticketJson as Map<String, dynamic>))
              .toList());
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }

  @override
  Future<Either<AppException, ApiResponse<Ticket>>> aquireLockForTicket(
      Ticket ticket) async {
    try {
      _dio.options.headers['Authorization'] = 'Bearer '
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXBpL3YxL2xvZ2luIiwiaWF0IjoxNzM0ODUyNjk1LCJleHAiOjE3MzQ5MTI2OTUsIm5iZiI6MTczNDg1MjY5NSwianRpIjoieURkYzR5dm9vN1FpZTVOdyIsInN1YiI6IjEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.P9YtMlGoNeVaQOroSn0RV-m5ZvocW70y_4VDSv4oL4A';

      final response = await _dio.post('ticket/lock',
          data: {"ticketNumber": ticket.ticketNumber, "gameId": ticket.gameId});
      return Helper.handleSuccessResponse(response, 200,
          fromTJson: (json) => Ticket.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }

  @override
  Future<Either<AppException, ApiResponse<Ticket>>> releaseLockForTicket(
      Ticket ticket) async {
    try {
      _dio.options.headers['Authorization'] = 'Bearer '
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXBpL3YxL2xvZ2luIiwiaWF0IjoxNzM0ODUyNjk1LCJleHAiOjE3MzQ5MTI2OTUsIm5iZiI6MTczNDg1MjY5NSwianRpIjoieURkYzR5dm9vN1FpZTVOdyIsInN1YiI6IjEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.P9YtMlGoNeVaQOroSn0RV-m5ZvocW70y_4VDSv4oL4A';
      final response = await _dio.post('ticket/release-lock/${ticket.id}',
          data: {"gameId": ticket.gameId});
      return Helper.handleSuccessResponse(response, 200,
          fromTJson: (json) => Ticket.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }
}
