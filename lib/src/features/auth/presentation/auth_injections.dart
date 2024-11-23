import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/local/abstract_auth_local_api.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/local/auth_local_api.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/remote/abstract_auth_remote_api.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/remote/auth_remote_api_impl.dart';
import 'package:mobile_app/src/features/auth/data/repository/auth_repo_impl.dart';
import 'package:mobile_app/src/features/auth/domain/repository/abstract_auth_repository.dart';

Future<void> initAuthInjection() async {
  sl.registerSingleton<AbstractAuthLocalApi>(AuthLocalApiImpl());
  sl.registerSingleton<AbstractAuthRemoteApi>(
      AuthRemoteApiImpl(dio: sl<DioFactory>().getInstance()));
  sl.registerSingleton<AbstractAuthRepository>(AuthRepoImpl(
      authLocalApi: sl<AbstractAuthLocalApi>(),
      authRemoteApi: sl<AbstractAuthRemoteApi>()));
}
