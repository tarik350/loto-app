import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/core/constants/storage_keys/storage_keys.dart';
import 'package:mobile_app/src/features/auth/register/data/data_source/local/abstract_local_register_api.dart';

class LocalRegisterApiImpl implements AbstractLocalRegisterApi {
  static final _registerBox = Hive.box('registerBox');

  @override
  Future<void> deleteUserPhoneNumber() async {
    await _registerBox.delete(StorageKeys.userPhoneNumberKey);
  }

  @override
  String getUserPhoneNumber() {
    return _registerBox.get(StorageKeys.userPhoneNumberKey, defaultValue: '');
  }

  @override
  Future<void> saveUserPhoneNumber(String phoneNumber) async {
    await _registerBox.put(StorageKeys.userPhoneNumberKey, phoneNumber);
  }
}
