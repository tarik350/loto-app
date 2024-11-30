import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/core/constants/storage_keys/auth_keys.dart';
import 'package:mobile_app/src/features/register/data/data_source/local/abstract_local_register_api.dart';

class LocalRegisterApiImpl implements AbstractLocalRegisterApi {
  static final _registerBox = Hive.box('registerBox');

  @override
  Future<void> deleteUserPhoneNumber() async {
    await _registerBox.delete(AuthKeys.userPhoneNumberKey);
  }

  @override
  String getUserPhoneNumber() {
    return _registerBox.get(AuthKeys.userPhoneNumberKey, defaultValue: '');
  }

  @override
  Future<void> saveUserPhoneNumber(String phoneNumber) async {
    await _registerBox.put(AuthKeys.userPhoneNumberKey, phoneNumber);
  }
}
