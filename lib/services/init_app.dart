import 'package:get_it/get_it.dart';
import 'package:mobile_app/services/auth_service.dart';
import 'package:mobile_app/services/storage_service.dart';

final getit = GetIt.instance;

Future<void> initAppService() async {
  //initialization here
  final auth = AuthService();
  final storage = StorageService();

  getit.registerSingleton<AuthService>(auth);
  getit.registerSingleton<StorageService>(storage);
}
