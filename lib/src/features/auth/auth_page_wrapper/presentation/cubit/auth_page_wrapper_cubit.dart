import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_wrapper_cubit.freezed.dart';
part 'auth_page_wrapper_state.dart';

class AuthPageWrapperCubit extends Cubit<AuthPageWrapperState> {
  AuthPageWrapperCubit() : super(const AuthPageWrapperState.login());

  void showLogin() {
    emit(const ShowLoginPageState());
  }

  void showRegister() {
    emit(const ShowRegisterPageState());
  }

  void showOtp(String phoneNumber) {
    emit(OtpState(phoneNumber: phoneNumber));
  }
}
