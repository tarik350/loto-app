import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/src/core/exceptions/failures.dart';
import 'package:mobile_app/src/core/utils/helper/form_submission_status.dart';
import 'package:mobile_app/src/features/auth/register/domain/models/register_request/register_request.dart';
import 'package:mobile_app/src/features/auth/register/domain/repository/abstract_register_repository.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AbstractRegisterRepository _registerRepository;
  RegisterBloc(AbstractRegisterRepository registerRepository)
      : _registerRepository = registerRepository,
        super(const RegisterState()) {
    on<RegisterEvent>((event, emit) => _handleEvent(event, emit));
  }

  FormSubmissionStatus _validateForm() {
    if (state.phoneNumber.isNotEmpty &&
        state.fullName.isNotEmpty &&
        state.password.isNotEmpty) {
      return FormSubmissionStatus.valid;
    }
    return FormSubmissionStatus.initial;
  }

  Future<void> _handleEvent(
      RegisterEvent event, Emitter<RegisterState> emit) async {
    switch (event) {
      case SubmitRegister():
        await _registerController(emit);
        break;
      case UpdateRegisterPhoneNumber(:final String phoneNumber):
        emit(state.copyWith(
            phoneNumber: phoneNumber, formStatus: _validateForm()));

        break;
      case UpdateRegisterPassword(:final String password):
        emit(state.copyWith(password: password, formStatus: _validateForm()));
        break;
      case UpdateRegisterFullName(:final String fullName):
        emit(state.copyWith(fullName: fullName, formStatus: _validateForm()));
        break;
      case UpdateRegisterProfilePicture(:final String profilePicturePath):
        emit(state.copyWith(
            profilePicturePath: profilePicturePath,
            formStatus: _validateForm()));
        break;
      case ResetForm():
        emit(const RegisterState());
        break;
      case UpdateAutovalidateMode(:final AutovalidateMode autovalidateMode):
        emit(state.copyWith(
            autovalidateMode: autovalidateMode, formStatus: _validateForm()));
        break;
    }
  }

  Future<void> _registerController(Emitter<RegisterState> emit) async {
    try {
      // if (state.formStatus != FormSubmissionStatus.valid) {
      //   emit(state.copyWith(
      //       formStatus: FormSubmissionStatus.failure,
      //       errorMessage: "Please fill in all fields"));
      //   return;
      // }

      emit(state.copyWith(formStatus: FormSubmissionStatus.inProgress));
      final result = await _registerRepository.register(RegisterRequestDTO(
          phoneNumber: state.phoneNumber,
          password: state.password,
          fullName: state.fullName,
          profilePicturePath: state.profilePicturePath));
      result.fold((AppFailure failure) {
        if (failure is ValidationFailure) {
          emit(state.copyWith(
            formStatus: FormSubmissionStatus.failure,
            errorMessage: failure.validationErrors.toString(),
          ));
        } else {
          emit(state.copyWith(
            errorMessage: failure.message,
            formStatus: FormSubmissionStatus.failure,
          ));
        }
      },
          (String res) => emit(
                state.copyWith(
                  formStatus: FormSubmissionStatus.success,
                  errorMessage: null,
                ),
              ));
    } catch (e) {
      emit(state.copyWith(errorMessage: "Unexpected error: $e"));
    }
  }
}
