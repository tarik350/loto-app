import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/core/constants/storage_keys/storage_keys.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/user/user.dart';

initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox(StorageKeys.preferencesBoxKey);
  await Hive.openBox<User>(StorageKeys.userBoxKey);
  await Hive.openBox(StorageKeys.authBoxKey);
  await Hive.openBox(StorageKeys.registerBoxKey);
}
