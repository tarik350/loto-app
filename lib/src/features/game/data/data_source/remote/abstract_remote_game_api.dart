import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

abstract class AbstractRemoteGameApi {
  Future<Either<AppException, ApiResponse<List<Ticket>>>> getGameTickets(
      int gameId);
}
