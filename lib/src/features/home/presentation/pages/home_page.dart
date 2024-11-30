import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/features/authentication_bottom_sheet/presentation/pages/authentication_bottom_sheet_page.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // RegisterPage(),
            // SizedBox(
            //   height: AppDimensions.spacingM,
            // ),
            CustomElevatedButton(
                gradient: AppColors.buttonGradient,
                width: MediaQuery.sizeOf(context).width,
                borderRadius: BorderRadius.circular(AppDimensions.radiusXL),
                onPressed: () {
                  AuthenticationBottomSheetPage.show(context);
                },
                child: const Text("open")),
          ],
        )),
      )),
    );
  }
}
