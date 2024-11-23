import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile_app/src/core/network/dio_factory.dart';
import 'package:mobile_app/src/core/network/dio_network.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/shared/models/app_config/app_config.dart';

Future<void> initNetworkInjection() async {
  sl.registerSingletonAsync<AppConfig>(() async => await initAppConfig());
  await sl.isReady<AppConfig>();
  DioNetwork.initDio();
  sl.registerSingleton<DioFactory>(DioFactory(DioNetwork.dio));
}

Future<AppConfig> initAppConfig() async {
  await dotenv.load(fileName: ".env");
  return AppConfig.fromJson(dotenv.env);
}
