part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String phoneNumber,
    @Default('') String password,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default(null) User? user,
    @Default(false) bool isFormValid,
  }) = _LoginState;
}
