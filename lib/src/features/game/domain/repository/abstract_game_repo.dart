import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';

abstract class AbstractGameRepo {
  Future<Either<AppFailure, List<Ticket>>> getGameTickets(int gameId);

  Future<Either<AppFailure, Ticket>> aquireLockForTicket(Ticket ticket);

  Future<Either<AppFailure, Ticket>> releaseLockForTicket(Ticket ticket);
}
