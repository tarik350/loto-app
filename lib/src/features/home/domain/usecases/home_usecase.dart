import 'package:dartz/dartz.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/domain/repositories/abstract_home_repository.dart';

class HomeUsecase {
  final AbstractHomeRepository repository;
  HomeUsecase(this.repository);
  Future<Either<Exception, List<GameCategory>>> getAllGamesWithCategory() {
    throw UnimplementedError();
  }
}
