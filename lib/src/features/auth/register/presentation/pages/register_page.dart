import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/form_submission_status.dart';
import 'package:mobile_app/src/core/widgets/custom_text_field.dart';
import 'package:mobile_app/src/core/widgets/game_button1.dart';
import 'package:mobile_app/src/features/auth/register/presentation/bloc/register_bloc.dart';
import 'package:mobile_app/src/features/auth/register/presentation/utils/register_validator.dart';

class RegisterPage extends StatelessWidget with RegisterValidator {
  RegisterPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, AutovalidateMode>(
      selector: (state) => state.autovalidateMode,
      builder: (context, AutovalidateMode autovalidateMode) {
        return Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const _FullNameInput(),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              const _PhoneInputFiled(),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              const _ProfilePictureInput(),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              const _PasswordInput(),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) {
                  if (state.formStatus == FormSubmissionStatus.failure &&
                      state.errorMessage != null) {
                    Fluttertoast.showToast(
                        msg: state.errorMessage ?? "",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                  if (state.formStatus == FormSubmissionStatus.success) {
                    Fluttertoast.showToast(
                        msg: "Register successful",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }

                  // context
                  //     .read<RegisterBloc>()
                  //     .add(const RegisterEvent.resetForm());
                  // Navigator.of(context).pop();
                },
                builder: (context, state) {
                  return GameButton1(
                    width: MediaQuery.sizeOf(context).width,
                    leftOffset: -70,
                    height: AppDimensions.buttonL,
                    bgGradientTopColor: AppColors.primaryColor,
                    bgGradientBottomColor: AppColors.secondaryColor,
                    borderGradientTopColor:
                        AppColors.lightSkyBlue.withAlpha(10),
                    borderGradientBottomColor: AppColors.lightSkyBlue,
                    shadowColor: AppColors.darkBlueShade,
                    title: 'Continue',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<RegisterBloc>()
                            .add(const RegisterEvent.submitRegister());
                      } else {
                        context.read<RegisterBloc>().add(
                            const RegisterEvent.updateAutovalidateMode(
                                autovalidateMode: AutovalidateMode.always));
                      }
                    },
                  );
                  // return CustomElevatedButton(
                  //     gradient: AppColors.primaryGradient,
                  //     width: MediaQuery.sizeOf(context).width,
                  //     borderRadius:
                  //         BorderRadius.circular(AppDimensions.radiusXL),
                  // onPressed: () {
                  //   if (_formKey.currentState!.validate()) {
                  //     context
                  //         .read<RegisterBloc>()
                  //         .add(const RegisterEvent.submitRegister());
                  //   } else {
                  //     context.read<RegisterBloc>().add(
                  //         const RegisterEvent.updateAutovalidateMode(
                  //             autovalidateMode: AutovalidateMode.always));
                  //   }
                  // },
                  //     child: Text(
                  //       state.formStatus == FormSubmissionStatus.inProgress
                  //           ? "loading"
                  //           : 'Continue',
                  //       style: const TextStyle(
                  //           fontWeight: FontWeight.bold, color: Colors.white),
                  //     ));
                },
              ),
              SizedBox(
                height: AppDimensions.spacingM,
              )
            ],
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget with RegisterValidator {
  const _PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        validator: validatePassword,
        isPassword: true,
        onChanged: (value) => context
            .read<RegisterBloc>()
            .add(RegisterEvent.updatePassword(password: value)),
        fieldKey: 'register_password_form_field',
        title: 'Password');
  }
}

class _FullNameInput extends StatelessWidget with RegisterValidator {
  const _FullNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return CustomTextField(
          height: AppDimensions.inputHeightLarge,
          validator: validateFullName,
          onChanged: (value) => context
              .read<RegisterBloc>()
              .add(RegisterEvent.updateFullName(fullName: value)),
          fieldKey: 'register_full_name_form_field',
          title: 'Full Name',
        );
      },
    );
  }
}

class _PhoneInputFiled extends StatelessWidget with RegisterValidator {
  const _PhoneInputFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validator: validatePhoneNumber,
      onChanged: (value) => context
          .read<RegisterBloc>()
          .add(RegisterEvent.updatePhone(phoneNumber: value)),
      fieldKey: 'register_phone_form_field',
      prefixIcon: Container(
        margin: EdgeInsets.only(right: AppDimensions.paddingXXS),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppDimensions.radiusM),
            bottomRight: Radius.circular(AppDimensions.radiusM),
          ),
          border: const Border(
            right: BorderSide(width: 2, color: AppColors.lightGray),
          ),
        ),
        width: 70.w,
        alignment: Alignment.center,
        child: Text(
          "+251",
          style: TextStyle(
            fontSize: AppDimensions.fontM,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: 'Phone Number',
    );
  }
}

class _ProfilePictureInput extends StatelessWidget {
  const _ProfilePictureInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      title: 'Profile Picture',
      fieldKey: 'register_profile_picture_form_field',
      readOnly: true,
      controller: TextEditingController(
          text: context.select<RegisterBloc, String?>(
              (RegisterBloc bloc) => bloc.state.profilePicturePath)),
      prefixIcon: GestureDetector(
        onTap: () {
          context.read<RegisterBloc>().add(
              const RegisterEvent.updateProfilePicture(
                  profilePicturePath:
                      'profile picture for logni title it is .png'));
        },
        child: Container(
          width: 120.w,
          margin: EdgeInsets.all(AppDimensions.spacingS),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingXS,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              border: Border.all(width: 1, color: AppColors.primaryColor)),
          child: Text(
            'Browse Files',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
                fontSize: AppDimensions.fontS),
          ),
        ),
      ),
    );
  }
}
