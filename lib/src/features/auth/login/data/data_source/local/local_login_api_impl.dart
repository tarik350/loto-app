import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/core/constants/storage_keys/storage_keys.dart';
import 'package:mobile_app/src/features/auth/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/user/user.dart';

class LocalLoginApiImpl implements AbstractLocalLoginApi {
  static final _userBox = Hive.box<User>('userBox');
  static final _authBox = Hive.box('authBox');

  @override
  User? getUserModel() {
    return _userBox.get('currentUser');
  }

  @override
  bool isUserAuthenticated() {
    return _authBox.get(StorageKeys.isAuthenticatedKey, defaultValue: false);
  }

  @override
  Future<void> logoutUser() async {
    await _userBox.delete('currentUser');
    await _authBox.delete(StorageKeys.tokenKey);
    await _authBox.delete(StorageKeys.refreshTokenKey);
    await _authBox.put(StorageKeys.isAuthenticatedKey, false);
  }

  @override
  Future<void> saveUserModel(User user) async {
    await _userBox.put('currentUser', user);
  }

  @override
  Future<void> saveToken(String token) async {
    await _authBox.put(StorageKeys.tokenKey, token);
  }

  @override
  String? getToken() {
    return _authBox.get(StorageKeys.tokenKey);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _authBox.put(StorageKeys.refreshTokenKey, refreshToken);
  }

  @override
  String? getRefreshToken() {
    return _authBox.get(StorageKeys.refreshTokenKey);
  }

  @override
  Future<void> setUserAuthenticated(bool isAuthenticated) async {
    await _authBox.put(StorageKeys.isAuthenticatedKey, isAuthenticated);
  }
}
