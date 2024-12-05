part of 'auth_bottom_sheet_cubit.dart';

@freezed
class AuthBottomSheetState with _$AuthBottomSheetState {
  const factory AuthBottomSheetState.login() = LoginState;
  const factory AuthBottomSheetState.register() = RegisterState;
  const factory AuthBottomSheetState.otp({required String phoneNumber}) =
      OtpState;
}
