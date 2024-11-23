import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/shared/services/preference_service.dart';

Future<void> initServicesInjection() async {
  sl.registerSingleton<PreferencesService>(PreferencesService());
}
