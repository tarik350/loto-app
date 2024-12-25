import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

abstract class AbstractRemoteGameApi {
  Future<Either<AppException, ApiResponse<List<Ticket>>>> getGameTickets(
      int gameId);

  Future<Either<AppException, ApiResponse<Ticket>>> aquireLockForTicket(
      Ticket ticket);

  Future<Either<AppException, ApiResponse<Ticket>>> releaseLockForTicket(
      Ticket ticket);

  //get random ticket
  Future<Either<AppException, ApiResponse<Ticket>>> getRandomTicketForGame();
  //fetch all locked tickets for user
  Future<Either<AppException, ApiResponse<List<Ticket>>>> getAllLockedTicket();
}
