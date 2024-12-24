import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/register/data/data_source/local/abstract_local_register_api.dart';
import 'package:mobile_app/src/features/auth/register/data/data_source/local/local_register_api_impl.dart';
import 'package:mobile_app/src/features/auth/register/data/data_source/remote/abstract_remote_register_api.dart';
import 'package:mobile_app/src/features/auth/register/data/data_source/remote/remote_register_api_impl.dart';
import 'package:mobile_app/src/features/auth/register/data/repository/register_repo_impl.dart';
import 'package:mobile_app/src/features/auth/register/domain/repository/abstract_register_repository.dart';
import 'package:mobile_app/src/features/auth/register/presentation/bloc/register_bloc.dart';

initRegisterInjection() async {
  sl.registerSingleton<AbstractRemoteRegisterApi>(
      RemoteRegisterApiImpl(sl<DioFactory>().getInstance()));
  sl.registerSingleton<AbstractLocalRegisterApi>(LocalRegisterApiImpl());
  sl.registerSingleton<AbstractRegisterRepository>(
      RegisterRepoImpl(remoteRegisterApi: sl(), localRegisterApi: sl()));
  sl.registerSingleton<RegisterBloc>(RegisterBloc(sl()));
}
