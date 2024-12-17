import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/exceptions.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/shared/models/api_response_dto/api_response.dart';
import 'package:mobile_app/src/shared/models/paginated_response/paginated_response.dart';

abstract class AbstractHomeRemoteApi {
  Future<Either<AppException, ApiResponse<PaginatedResponse<Game>>>>
      getAllCashGames();

  /// endpoint not ready yet
  // Future<Either<AppException, ApiResponse<List<GoodsGame>>>> getAllGoodsGames();

  //get all categories
  Future<Either<AppException, ApiResponse<List<GameCategory>>>>
      getAllGameCateories();

  //get games with specific category id
  Future<Either<AppException, ApiResponse<List<Game>>>> getAllGamesForCategory(
      int categoryId);

  //end point not ready yet
  //get featured ads for the carausel ( they are games )
}
