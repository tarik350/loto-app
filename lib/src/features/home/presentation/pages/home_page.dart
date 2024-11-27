import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/local/abstract_auth_local_api.dart';
import 'package:mobile_app/src/features/auth_bottom_sheet/presentation/pages/auth_bottom_sheet.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:mobile_app/src/features/login/presentation/bloc/login_bloc.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = sl<AbstractAuthLocalApi>().getUserModel();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LoginBloc(sl())),
          BlocProvider(create: (context) => HomeBloc(sl())),
        ],
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomElevatedButton(
                  gradient: AppColors.buttonGradient,
                  width: MediaQuery.sizeOf(context).width,
                  borderRadius: BorderRadius.circular(AppDimensions.radiusXL),
                  onPressed: () {
                    AuthBottomSheetPage.show(context);
                  },
                  child: const Text("open")),
              Text('welcome home ${user?.fullName}'),
            ],
          )),
        )),
      ),
    );
  }
}
