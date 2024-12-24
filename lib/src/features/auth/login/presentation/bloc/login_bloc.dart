import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/utils/helper/form_submission_status.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/login_request/login_request_model.dart';
import 'package:mobile_app/src/features/auth/login/domain/models/user/user.dart';
import 'package:mobile_app/src/features/auth/login/domain/repository/abstract_login_repo.dart';

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

  FormSubmissionStatus _validateForm() {
    if (state.phoneNumber.isNotEmpty && state.password.isNotEmpty) {
      return FormSubmissionStatus.valid;
    }
    return FormSubmissionStatus.initial;
  }

//event distributer
  Future<void> _handleEvent(LoginEvent event, Emitter<LoginState> emit) async {
    switch (event) {
      case SubmitLogin():
        await _loginController(emit);
        break;
      case UpdatePhoneNumber(:final String phoneNumber):
        emit(state.copyWith(
            phoneNumber: phoneNumber, formSubmissionStatus: _validateForm()));

        break;
      case UpdatePassword(:final String password):
        emit(state.copyWith(
            password: password, formSubmissionStatus: _validateForm()));
        break;
      case UpdateAutovalidateMode(:final AutovalidateMode autovalidateMode):
        emit(state.copyWith(autovalidateMode: autovalidateMode));
        break;
      case ResetForm():
        emit(const LoginState());
        break;
    }
  }

  //controllers
  Future<void> _loginController(Emitter<LoginState> emit) async {
    try {
      emit(state.copyWith(
          formSubmissionStatus: FormSubmissionStatus.inProgress));

      final result = await _loginRepository.login(
          LoginRequestDTO(phone: state.phoneNumber, password: state.password));
      result.fold(
        (failure) => emit(state.copyWith(
            errorMessage: failure.message,
            formSubmissionStatus: FormSubmissionStatus.failure)),
        (user) => emit(state.copyWith(
            user: user, formSubmissionStatus: FormSubmissionStatus.success)),
      );
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "Unexpected error: $e",
          formSubmissionStatus: FormSubmissionStatus.failure));
    }
  }
}
