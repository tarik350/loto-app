import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/user/user.dart';

initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox('preferencesBox');
  await Hive.openBox<User>('userBox');
  await Hive.openBox('authBox');
  await Hive.openBox('registerBox');
}
