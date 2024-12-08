import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/shared/features/authentication_bottom_sheet/presentation/cubit/auth_bottom_sheet_cubit.dart';
import 'package:mobile_app/src/features/login/presentation/pages/login_page.dart';
import 'package:mobile_app/src/features/register/presentation/pages/register_page.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

class AuthBottomSheetContent extends StatelessWidget {
  const AuthBottomSheetContent({super.key});

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
                            login: () => AppColors.primaryGradient,
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
                            register: () => AppColors.primaryGradient,
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
      return LoginPage();
    } else if (state is RegisterState) {
      return RegisterPage();
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
