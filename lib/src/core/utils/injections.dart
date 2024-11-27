import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:mobile_app/src/core/network/network_injections.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user_adapter.dart';
import 'package:mobile_app/src/features/auth/presentation/auth_injections.dart';
import 'package:mobile_app/src/features/home/presentation/home_injection.dart';
import 'package:mobile_app/src/features/login/login_injection.dart';
import 'package:mobile_app/src/shared/services/services_injections.dart';

final sl = GetIt.instance;

Future<void> initInjection() async {
  await initNetworkInjection();
  await initHive();
  await initServicesInjection();
  await initAuthInjection();
  await initLoginInjection();
  await initHomeInjection();
}

initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox('preferencesBox');
  await Hive.openBox<User>('userBox');
  await Hive.openBox('authBox');
}
