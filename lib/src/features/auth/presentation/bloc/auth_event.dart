part of 'auth_bloc.dart';

@Freezed()
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(
      {required String phone, required String password}) = LoginEvent;
  const factory AuthEvent.signup(RegisterRequest request) = SignupEvent;
}
