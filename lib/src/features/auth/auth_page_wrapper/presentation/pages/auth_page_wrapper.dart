import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/widgets/tab_scale_animation_wrapper.dart';
import 'package:mobile_app/src/features/auth/login/presentation/pages/login_page.dart';
import 'package:mobile_app/src/features/auth/register/presentation/pages/register_page.dart';
import 'package:mobile_app/src/features/auth/auth_page_wrapper/presentation/cubit/auth_page_wrapper_cubit.dart';
import 'package:mobile_app/src/shared/widgets/tab_selector_button.dart';

@RoutePage()
class AuthPageWrapper extends StatelessWidget {
  const AuthPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20.h,
              ),
            ),
            SliverAppBar(
              pinned: false,
              toolbarHeight: 230.h,
              stretch: false,
              backgroundColor: Colors.transparent,
              leading: Container(),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.zero,
                title: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingS,
                        vertical: AppDimensions.paddingS),
                    child:
                        BlocBuilder<AuthPageWrapperCubit, AuthPageWrapperState>(
                      builder: (context, state) {
                        final key = ValueKey(state.runtimeType);
                        return Column(
                          key: key,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ScaleOnTapAnimationWrapper(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                    padding: EdgeInsets.all(6.h),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            AppDimensions.radiusCircular),
                                        border: Border.all(
                                            width: 2, color: Colors.white)),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                      size: AppDimensions.iconS,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: AppDimensions.paddingXL,
                                  bottom: AppDimensions.paddingXS),
                              child: FadeInDown(
                                duration: const Duration(milliseconds: 1000),
                                child: Text(
                                  state.maybeWhen(
                                      orElse: () => "",
                                      login: () =>
                                          "Unlock bonuses just for logging in!",
                                      register: () =>
                                          "Create Your Account – Start Your Winning Journey!"),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppDimensions.fontXXL),
                                ),
                              ),
                            ),
                            FadeInDown(
                              duration: const Duration(milliseconds: 1300),
                              child: Text(
                                state.maybeWhen(
                                    orElse: () => "",
                                    login: () =>
                                        'Join the Lottery – Big Dreams, Big Rewards!',
                                    register: () =>
                                        "Secure your spot in the next big draw and unlock  daily rewards!"),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: AppDimensions.fontS,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: AppDimensions.spacingL,
                            )
                          ],
                        );
                      },
                    )),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimensions.paddingL,
                    vertical: AppDimensions.paddingM),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppDimensions.radius3XL),
                      topLeft: Radius.circular(AppDimensions.radius3XL)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusS),
                        border: const GradientBoxBorder(
                            gradient: AppColors.secondaryGradient),
                      ),
                      width: double.maxFinite,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusS),
                        child: BlocBuilder<AuthPageWrapperCubit,
                            AuthPageWrapperState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                TabSelectorButton(
                                    isSelected: state is ShowLoginPageState,
                                    onTap: () => context
                                        .read<AuthPageWrapperCubit>()
                                        .showLogin(),
                                    title: "Login"),
                                TabSelectorButton(
                                    isSelected: state is ShowRegisterPageState,
                                    onTap: () => context
                                        .read<AuthPageWrapperCubit>()
                                        .showRegister(),
                                    title: "Register")
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.spacingXXL,
                    ),
                    BlocBuilder<AuthPageWrapperCubit, AuthPageWrapperState>(
                      builder: (context, state) {
                        switch (state) {
                          case ShowLoginPageState():
                            return LoginPage();
                          case ShowRegisterPageState():
                            return RegisterPage();
                          default:
                            return LoginPage();
                        }
                      },
                    ),
                    SizedBox(
                      height: AppDimensions.spacingL,
                    ),
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
            )
          ],
        ),
      ),
    );
  }
}
