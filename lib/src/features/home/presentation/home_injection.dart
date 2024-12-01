import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/abstract_home_remote_api.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/home_remote_api_impl.dart';
import 'package:mobile_app/src/features/home/data/repositories/home_repo_impl.dart';
import 'package:mobile_app/src/features/home/domain/repositories/abstract_home_repository.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';

initHomeInjection() async {
  sl.registerSingleton<AbstractHomeRemoteApi>(HomeRemoteApiImpl(
      privateApi: sl<DioFactory>().getInstance(true),
      publicApi: sl<DioFactory>().getInstance()));
  sl.registerSingleton<AbstractHomeRepository>(HomeRepoImpl(sl()));
  sl.registerSingleton<HomeBloc>(HomeBloc(sl<AbstractHomeRepository>()));
}
