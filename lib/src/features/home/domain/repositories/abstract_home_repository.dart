import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';

abstract class AbstractHomeRepository {
  Future<Either<AppFailure, List<GameCategory>>> getAllGamesWithCategory();
}
