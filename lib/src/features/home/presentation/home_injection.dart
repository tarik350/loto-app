import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/home/data/data_source/remote/home_remote_api_impl.dart';
import 'package:mobile_app/src/features/home/data/repositories/home_repo_impl.dart';
import 'package:mobile_app/src/features/home/domain/usecases/home_usecase.dart';

Future<void> initHomeInjection() async {
  sl.registerSingleton<HomeUsecase>(HomeUsecase(HomeRepoImpl(HomeRemoteApiImpl(
      privateApi: sl<DioFactory>().getInstance(true),
      publicApi: sl<DioFactory>().getInstance()))));
}
