import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket.dart';

abstract class AbstractGameRepo {
  Future<Either<AppFailure, List<Ticket>>> getGameTickets(int gameId);
}
