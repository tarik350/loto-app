import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/form_submission_status.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/core/widgets/custom_text_field.dart';
import 'package:mobile_app/src/features/login/presentation/bloc/login_bloc.dart';
import 'package:mobile_app/src/features/login/presentation/utils/login_validator.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, AutovalidateMode>(
      selector: (state) => state.autovalidateMode,
      builder: (context, AutovalidateMode autovalidateMode) {
        return Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'LOGIN ON EDIL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontXL,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 4),
              const _PhoneInputFiled(),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
              const _PasswordInputField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        visualDensity: VisualDensity.compact,
                        fillColor:
                            WidgetStateProperty.all(AppColors.primaryColor),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        splashRadius: 0,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: AppDimensions.fontXS),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.paddingXXS),
                      overlayColor: AppColors.primaryColor,
                      minimumSize: const Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text('Forgot password?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppDimensions.fontXS)),
                  ),
                ],
              ),
              SizedBox(
                height: AppDimensions.spacingM,
              ),
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.formSubmissionStatus ==
                      FormSubmissionStatus.success) {
                    Fluttertoast.showToast(
                        msg: "login successfully as ${state.user?.fullName}",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                  if (state.formSubmissionStatus ==
                      FormSubmissionStatus.failure) {
                    Fluttertoast.showToast(
                        msg: "error logging in ${state.errorMessage}",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                      gradient: AppColors.primaryGradient,
                      width: MediaQuery.sizeOf(context).width,
                      borderRadius:
                          BorderRadius.circular(AppDimensions.radiusXL),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<LoginBloc>()
                              .add(const LoginEvent.submitLogin());
                        } else {
                          context.read<LoginBloc>().add(
                              const LoginEvent.updateAutovalidateMode(
                                  autovalidateMode: AutovalidateMode.always));
                        }
                      },
                      child: Text(
                        state.formSubmissionStatus ==
                                FormSubmissionStatus.inProgress
                            ? "loading"
                            : "Continue",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ));
                },
              ),
              SizedBox(
                height: AppDimensions.spacingS,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PhoneInputFiled extends StatelessWidget with LoginValidator {
  const _PhoneInputFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: sl<LoginBloc>(),
      builder: (context, state) {
        return CustomTextField(
          fieldKey: 'login_phone_form_field',
          title: 'Phone Number',
          keyboardType: TextInputType.number,
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
          onChanged: (value) => context
              .read<LoginBloc>()
              .add(UpdatePhoneNumber(phoneNumber: value)),
          validator: validatePhoneNumber,
        );
      },
    );
  }
}

class _PasswordInputField extends StatelessWidget with LoginValidator {
  const _PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: sl<LoginBloc>(),
      builder: (context, state) {
        return CustomTextField(
          fieldKey: 'login_password_form_field',
          title: 'Password',
          keyboardType: TextInputType.number,
          isPassword: true,
          suffixIcon: const Icon(
            Icons.lock,
            color: AppColors.primaryColor,
          ),
          onChanged: (value) =>
              context.read<LoginBloc>().add(UpdatePassword(password: value)),
          validator: validatePassword,
        );
      },
    );
  }
}
