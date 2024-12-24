import 'package:mobile_app/src/features/auth/login/domain/models/user/user.dart';

abstract class AbstractLocalLoginApi {
  Future<void> saveUserModel(User user);

  User? getUserModel();

  Future<void> logoutUser();

  bool isUserAuthenticated();

  Future<void> setUserAuthenticated(bool isAuthenticated);

  String? getToken();

  String? getRefreshToken();

  Future<void> saveToken(String token);

  Future<void> saveRefreshToken(String refreshToken);
}
