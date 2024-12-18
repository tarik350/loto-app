import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/shared/models/paginated_response/paginated_response.dart';

abstract class AbstractHomeRepository {
  Future<Either<AppFailure, PaginatedResponse<Game>>> getAllCashGames(
      {int? categoryId});
  Future<Either<AppFailure, List<GameCategory>>> getAllGameCateories();
}
