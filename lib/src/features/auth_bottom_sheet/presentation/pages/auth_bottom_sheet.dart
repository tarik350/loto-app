import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/features/auth_bottom_sheet/presentation/cubit/auth_bottom_sheet_cubit.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

import '../../../login/presentation/pages/login_page.dart';

class AuthBottomSheetPage {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppDimensions.radius4XL)),
      ),
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom * .5),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height * .7,
                maxHeight: MediaQuery.sizeOf(context).height * .7),
            child: BlocProvider(
              create: (_) => AuthBottomSheetCubit(),
              child: Padding(
                padding: EdgeInsets.all(AppDimensions.paddingM),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AuthBottomSheetPageContent(),
                    const Spacer(),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: AppDimensions.fontXS,
                        ),
                        children: const [
                          TextSpan(
                            text: 'By logging in, you are agreeing to our ',
                          ),
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' and acknowledge that you have read our ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AuthBottomSheetPageContent extends StatelessWidget {
  const AuthBottomSheetPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBottomSheetCubit, AuthBottomSheetState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.paddingS,
                  vertical: AppDimensions.paddingXS),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.lightGray),
                  color: AppColors.backgroundGray,
                  borderRadius: BorderRadius.circular(50.r)),
              child: Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                        height: AppDimensions.buttonL,
                        borderRadius: BorderRadius.all(Radius.circular(50.r)),
                        gradient: state.maybeWhen(
                            login: () => AppColors.buttonGradient,
                            orElse: () => AppColors.buttonGradient10Opacity),
                        // Optional: match button's border radius
                        onPressed: () {
                          context.read<AuthBottomSheetCubit>().showLogin();
                        },
                        child: Text('Login',
                            style: state.maybeWhen(
                                login: () => const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                orElse: () => const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal)))),
                  ),
                  SizedBox(
                    width: AppDimensions.spacingS,
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                        height: AppDimensions.buttonL,
                        borderRadius: BorderRadius.all(Radius.circular(
                            50.r)), // Optional: match button's border radius
                        gradient: state.maybeWhen(
                            register: () => AppColors.buttonGradient,
                            orElse: () => AppColors.buttonGradient10Opacity),
                        onPressed: () {
                          context.read<AuthBottomSheetCubit>().showRegister();
                        },
                        child: Text("Register",
                            style: state.maybeWhen(
                                register: () => const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                orElse: () => const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal)))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppDimensions.spacingL,
            ),
            _buildPage(context, state),
          ],
        );
      },
    );
  }

  Widget _buildPage(BuildContext context, AuthBottomSheetState state) {
    if (state is LoginState) {
      return const LoginPage();
    } else if (state is RegisterState) {
      return RegisterPage(
        onRegisterComplete: (phoneNumber) =>
            context.read<AuthBottomSheetCubit>().showOtp(phoneNumber),
        onLoginTap: () => context.read<AuthBottomSheetCubit>().showLogin(),
      );
    } else if (state is OtpState) {
      return OtpPage(
        phoneNumber: (state).phoneNumber,
        onBack: () => context.read<AuthBottomSheetCubit>().showRegister(),
      );
    } else {
      return const SizedBox.shrink(); // Default case
    }
  }
}

class RegisterPage extends StatelessWidget {
  final Function(String) onRegisterComplete;
  final VoidCallback onLoginTap;

  const RegisterPage(
      {super.key, required this.onRegisterComplete, required this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    String phoneNumber = "";

    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        top: 20.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: (value) {
              phoneNumber = value;
            },
            decoration: const InputDecoration(labelText: 'Phone Number'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
          ElevatedButton(
            onPressed: () {
              onRegisterComplete(phoneNumber);
            },
            child: const Text("Register"),
          ),
          TextButton(
            onPressed: onLoginTap,
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}

class OtpPage extends StatelessWidget {
  final String phoneNumber;
  final VoidCallback onBack;

  const OtpPage({super.key, required this.phoneNumber, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        top: 20.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: onBack,
          ),
          Text("Enter OTP sent to $phoneNumber"),
          const TextField(
            decoration: InputDecoration(labelText: 'Enter OTP'),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle OTP Verification
            },
            child: const Text("Verify"),
          ),
        ],
      ),
    );
  }
}
