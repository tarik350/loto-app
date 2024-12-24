part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String phoneNumber,
    @Default('') String password,
    @Default('') String fullName,
    @Default(null) String? profilePicturePath,
    @Default(FormSubmissionStatus.initial) FormSubmissionStatus formStatus,
    @Default(null) String? errorMessage,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
  }) = _RegisterState;
}
