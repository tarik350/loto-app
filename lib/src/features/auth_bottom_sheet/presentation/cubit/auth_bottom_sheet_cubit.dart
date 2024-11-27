import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bottom_sheet_cubit.freezed.dart';
part 'auth_bottom_sheet_state.dart';

class AuthBottomSheetCubit extends Cubit<AuthBottomSheetState> {
  AuthBottomSheetCubit() : super(const AuthBottomSheetState.login());

  void showLogin() {
    emit(const LoginState());
  }

  void showRegister() {
    emit(const RegisterState());
  }

  void showOtp(String phoneNumber) {
    emit(OtpState(phoneNumber: phoneNumber));
  }
}
