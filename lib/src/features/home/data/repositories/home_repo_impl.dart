import 'package:mobile_app/src/features/home/data/data_source/remote/abstract_home_remote_api.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/domain/repositories/abstract_home_repository.dart';

class HomeRepoImpl extends AbstractHomeRepository {
  final AbstractHomeRemoteApi remoteApi;
  HomeRepoImpl(this.remoteApi);
  @override
  Future<List<GameCategory>> getAllGamesWithCategory() {
    throw UnimplementedError();
  }
}
