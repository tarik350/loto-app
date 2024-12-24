import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/core/network/error/dio_error_handler.dart';
import 'package:mobile_app/src/features/game/data/data_source/remote/abstract_remote_game_api.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/domain/repository/abstract_game_repo.dart';

class GameRepoImpl extends AbstractGameRepo {
  final AbstractRemoteGameApi _gameApi;

  GameRepoImpl({required AbstractRemoteGameApi gameApi}) : _gameApi = gameApi;
  @override
  Future<Either<AppFailure, List<Ticket>>> getGameTickets(int gameId) async {
    final response = await _gameApi.getGameTickets(gameId);
    return response.fold((exception) => mapExceptionToFailure(exception),
        (response) => right(response.data as List<Ticket>));
  }

  @override
  Future<Either<AppFailure, Ticket>> aquireLockForTicket(Ticket ticket) async {
    final response = await _gameApi.aquireLockForTicket(ticket);
    return response.fold((exception) => mapExceptionToFailure(exception),
        (res) => right(res.data as Ticket));
  }

  @override
  Future<Either<AppFailure, Ticket>> releaseLockForTicket(Ticket ticket) async {
    final response = await _gameApi.releaseLockForTicket(ticket);
    return response.fold((exception) => mapExceptionToFailure(exception),
        (res) => right(res.data as Ticket));
  }
}
