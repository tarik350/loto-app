part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submitLogin() = SubmitLogin;
  const factory LoginEvent.updatePhone({required String phoneNumber}) =
      UpdatePhoneNumber;
  const factory LoginEvent.updateAutovalidateMode({
    required AutovalidateMode autovalidateMode,
  }) = UpdateAutovalidateMode;

  const factory LoginEvent.resetForm() = ResetForm;
  const factory LoginEvent.updatePassword({required String password}) =
      UpdatePassword;
}
