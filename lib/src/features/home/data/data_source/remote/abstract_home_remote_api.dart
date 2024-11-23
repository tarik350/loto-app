import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';

abstract class AbstractHomeRemoteApi {
  Future<Either<Exception, ApiResponse<List<GameCategory>>>>
      getAllGamesWithCategory();
}
