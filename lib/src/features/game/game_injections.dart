import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/game/data/data_source/remote/abstract_remote_game_api.dart';
import 'package:mobile_app/src/features/game/data/data_source/remote/remote_game_api_impl.dart';
import 'package:mobile_app/src/features/game/data/repository/game_repo_impl.dart';
import 'package:mobile_app/src/features/game/domain/repository/abstract_game_repo.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';

initGameInjections() {
  sl.registerSingleton<AbstractRemoteGameApi>(RemoteGameApiImpl(
    dio: sl<DioFactory>().getInstance(),
  ));
  sl.registerSingleton<AbstractGameRepo>(
      GameRepoImpl(gameApi: sl<AbstractRemoteGameApi>()));
  sl.registerSingleton<GameBloc>(GameBloc(gameRepo: sl<AbstractGameRepo>()));
}
