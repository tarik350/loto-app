import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/features/login/domain/models/login_request/login_request_model.dart';
import 'package:mobile_app/src/features/login/domain/models/user/user.dart';
import 'package:mobile_app/src/features/login/domain/repository/abstract_login_repo.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AbstractLoginRepository _loginRepository;
  LoginBloc(AbstractLoginRepository loginRepository)
      : _loginRepository = loginRepository,
        super(const LoginState()) {
    on<LoginEvent>((event, emit) => _handleEvent(event, emit));
  }

//event distributer
  Future<void> _handleEvent(LoginEvent event, Emitter<LoginState> emit) async {
    switch (event) {
      case SubmitLogin():
        await _loginController(emit);
        break;
      case UpdatePhoneNumber(:final String phoneNumber):
        emit(state.copyWith(phoneNumber: phoneNumber));
        if (state.password.isNotEmpty && state.phoneNumber.isNotEmpty) {
          emit(state.copyWith(isFormValid: true));
        }
        break;
      case UpdatePassword(:final String password):
        emit(state.copyWith(password: password));
        if (state.password.isNotEmpty && state.phoneNumber.isNotEmpty) {
          emit(state.copyWith(isFormValid: true));
        }
        break;
    }
  }

  //controllers
  Future<void> _loginController(Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      if (!state.isFormValid) {
        emit(state.copyWith(
            errorMessage: "Please provide all required fields",
            isLoading: false));
        return;
      }
      final result = await _loginRepository.login(LoginRequestModel(
          phone: state.phoneNumber, password: state.password));
      result.fold(
        (failure) => emit(
            state.copyWith(errorMessage: failure.message, isLoading: false)),
        (user) => emit(state.copyWith(user: user, isLoading: false)),
      );
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "Unexpected error: $e", isLoading: false));
    }
  }
}
