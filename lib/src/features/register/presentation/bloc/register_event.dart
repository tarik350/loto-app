part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.updatePhone({required String phoneNumber}) =
      UpdateRegisterPhoneNumber;
  const factory RegisterEvent.updatePassword({required String password}) =
      UpdateRegisterPassword;
  const factory RegisterEvent.updateFullName({required String fullName}) =
      UpdateRegisterFullName;
  const factory RegisterEvent.updateAutovalidateMode(
      {required AutovalidateMode autovalidateMode}) = UpdateAutovalidateMode;
  const factory RegisterEvent.resetForm() = ResetForm;
  const factory RegisterEvent.submitRegister() = SubmitRegister;
  const factory RegisterEvent.updateProfilePicture(
      {required String profilePicturePath}) = UpdateRegisterProfilePicture;
}
