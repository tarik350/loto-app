import 'package:get_it/get_it.dart';
import 'package:mobile_app/src/core/network/network_injections.dart';
import 'package:mobile_app/src/core/utils/hive_injection.dart';
import 'package:mobile_app/src/features/game/game_injections.dart';
import 'package:mobile_app/src/features/home/presentation/home_injection.dart';
import 'package:mobile_app/src/features/auth/login/login_injection.dart';
import 'package:mobile_app/src/features/auth/register/register_injection.dart';
import 'package:mobile_app/src/shared/services/services_injections.dart';

final sl = GetIt.instance;

Future<void> initInjection() async {
  await initHive();
  await initNetworkInjection();
  await initServicesInjection();
  await initLoginInjection();
  await initRegisterInjection();
  await initHomeInjection();
  await initGameInjections();
}
