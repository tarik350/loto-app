import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';

abstract class AbstractHomeRepository {
  Future<List<GameCategory>> getAllGamesWithCategory();
}
