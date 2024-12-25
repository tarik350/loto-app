import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/game/data/data_source/remote/abstract_remote_game_api.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
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
      final response = await sl<DioFactory>().getInstance(true).post(
          'ticket/lock',
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
      final response = await sl<DioFactory>().getInstance(true).post(
          'ticket/release-lock/${ticket.id}',
          data: {"gameId": ticket.gameId});
      return Helper.handleSuccessResponse(response, 200,
          fromTJson: (json) => Ticket.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(error: e));
    }
  }

  @override
  Future<Either<AppException, ApiResponse<List<Ticket>>>>
      getAllLockedTicket() async {
    try {
      final gameId = sl<GameBloc>().state.gameId;
      final response =
          await sl<DioFactory>().getInstance(true).get('ticket/locked', data: {
        "gameId": gameId,
      });
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
  Future<Either<AppException, ApiResponse<Ticket>>>
      getRandomTicketForGame() async {
    try {
      final gameId = sl<GameBloc>().state.gameId;
      final response = await sl<DioFactory>()
          .getInstance(true)
          .get('ticket/random-ticket', data: {
        "gameId": gameId,
      });

      return Helper.handleSuccessResponse(response, 200,
          fromTJson: (json) => Ticket.fromJson(json as Map<String, dynamic>));
    } on DioException catch (e) {
      return left(handleDioException(e));
    } catch (e) {
      return left(UnexpectedException(
        error: e,
      ));
    }
  }
}
