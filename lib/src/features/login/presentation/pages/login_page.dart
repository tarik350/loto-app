import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/core/widgets/custom_text_field.dart';
import 'package:mobile_app/src/features/login/domain/repository/abstract_login_repo.dart';
import 'package:mobile_app/src/features/login/presentation/bloc/login_bloc.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(sl<AbstractLoginRepository>()),
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
                    fillColor: WidgetStateProperty.all(AppColors.primaryColor),
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
          const _LoginButton(),
          SizedBox(
            height: AppDimensions.spacingS,
          ),
        ],
      ),
    );
  }
}

class _PhoneInputFiled extends StatelessWidget {
  const _PhoneInputFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: sl<LoginBloc>(),
      builder: (context, state) {
        return CustomTextField(
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
          onChanged: (value) {},
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter phone number';
            }
            return null;
          },
        );
      },
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  const _PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: sl<LoginBloc>(),
      builder: (context, state) {
        return CustomTextField(
          title: 'Password',
          keyboardType: TextInputType.number,
          isPassword: true,
          suffixIcon: const Icon(
            Icons.lock,
            color: AppColors.primaryColor,
          ),
          onChanged: (value) {},
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter phone number';
            }
            return null;
          },
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return CustomElevatedButton(
            gradient: AppColors.buttonGradient,
            width: MediaQuery.sizeOf(context).width,
            borderRadius: BorderRadius.circular(AppDimensions.radiusXL),
            onPressed: () {},
            child: const Text(
              "Continue",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
            ));
      },
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixWidget;
  final VoidCallback? onPrefixTap;
  final Widget? suffixWidget;
  final VoidCallback? onSuffixTap;
  final ValueChanged<String>? onChanged;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.prefixWidget,
    this.onPrefixTap,
    this.suffixWidget,
    this.onSuffixTap,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        prefixIcon: prefixWidget != null
            ? GestureDetector(
                onTap: onPrefixTap,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: prefixWidget,
                ),
              )
            : null,
        suffixIcon: suffixWidget != null
            ? GestureDetector(
                onTap: onSuffixTap,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: suffixWidget,
                ),
              )
            : null,
      ),
    );
  }
}
