part of 'auth_page_wrapper_cubit.dart';

@freezed
class AuthPageWrapperState with _$AuthPageWrapperState {
  const factory AuthPageWrapperState.login() = ShowLoginPageState;
  const factory AuthPageWrapperState.register() = ShowRegisterPageState;
  const factory AuthPageWrapperState.otp({required String phoneNumber}) =
      OtpState;
}
