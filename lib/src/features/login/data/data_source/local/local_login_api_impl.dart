import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/src/core/constants/storage_keys/auth_keys.dart';
import 'package:mobile_app/src/features/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';

class LocalLoginApiImpl implements AbstractLocalLoginApi {
  static final _userBox = Hive.box<User>('userBox');
  static final _authBox = Hive.box('authBox');

  @override
  User? getUserModel() {
    return _userBox.get('currentUser');
  }

  @override
  bool? isUserAuthenticated() {
    return _authBox.get(AuthKeys.isAuthenticatedKey, defaultValue: false);
  }

  @override
  Future<void> logoutUser() async {
    await _userBox.delete('currentUser');
    await _authBox.delete(AuthKeys.tokenKey);
    await _authBox.delete(AuthKeys.refreshTokenKey);
    await _authBox.put(AuthKeys.isAuthenticatedKey, false);
  }

  @override
  Future<void> saveUserModel(User user) async {
    await _userBox.put('currentUser', user);
  }

  @override
  Future<void> saveToken(String token) async {
    await _authBox.put(AuthKeys.tokenKey, token);
  }

  @override
  String? getToken() {
    return _authBox.get(AuthKeys.tokenKey);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _authBox.put(AuthKeys.refreshTokenKey, refreshToken);
  }

  @override
  String? getRefreshToken() {
    return _authBox.get(AuthKeys.refreshTokenKey);
  }

  @override
  Future<void> setUserAuthenticated(bool isAuthenticated) async {
    await _authBox.put(AuthKeys.isAuthenticatedKey, isAuthenticated);
  }
}
