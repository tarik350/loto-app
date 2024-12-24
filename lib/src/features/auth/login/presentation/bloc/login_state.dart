part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String phoneNumber,
    @Default('') String password,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(FormSubmissionStatus.initial)
    FormSubmissionStatus formSubmissionStatus,
    @Default(null) String? errorMessage,
    @Default(null) User? user,
  }) = _LoginState;
}
