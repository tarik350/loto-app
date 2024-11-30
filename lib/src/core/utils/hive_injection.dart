import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user_adapter.dart';

initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox('preferencesBox');
  await Hive.openBox<User>('userBox');
  await Hive.openBox('authBox');
  await Hive.openBox('registerBox');
}
