import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/game/data/data_source/remote/abstract_remote_game_api.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket.dart';
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
}
