import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/login/data/data_source/local/local_login_api_impl.dart';
import 'package:mobile_app/src/features/login/data/data_source/remote/abstract_remote_login_api.dart';
import 'package:mobile_app/src/features/login/data/data_source/remote/remote_login_api_impl.dart';
import 'package:mobile_app/src/features/login/data/repository/login_repo_impl.dart';
import 'package:mobile_app/src/features/login/domain/repository/abstract_login_repo.dart';
import 'package:mobile_app/src/features/login/presentation/bloc/login_bloc.dart';

initLoginInjection() async {
  sl.registerSingleton<AbstractLocalLoginApi>(LocalLoginApiImpl());
  sl.registerSingleton<AbstractRemoteLoginApi>(
      RemoteLoginApiImpl(sl<DioFactory>().getInstance()));
  sl.registerSingleton<AbstractLoginRepository>(LoginRepoImpl(
      localLoginApi: sl<AbstractLocalLoginApi>(),
      remoteLoginApi: sl<AbstractRemoteLoginApi>()));
  sl.registerSingleton<LoginBloc>(LoginBloc(sl()));
}
