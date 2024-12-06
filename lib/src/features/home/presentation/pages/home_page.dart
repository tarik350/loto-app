import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/cash_home_page.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/home_page_filter_appbar.dart';

// Define color variables

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// Mock data for game cards

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80.h,
            floating: false,
            pinned: currentIndex == 1,
            backgroundColor: AppColors.tertiaryColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => currentIndex = 0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.transparentWhite),
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusL),
                        color: currentIndex == 0
                            ? AppColors.transparentWhite
                            : Colors.transparent,
                      ),
                      child: Text(
                        'Cash',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: AppDimensions.fontS),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 14.w),
                    height: 50.h,
                    width: 50.h,
                    child: AppImages.cardSvg,
                  ),
                  GestureDetector(
                    onTap: () => setState(() => currentIndex = 1),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.transparentWhite),
                          borderRadius:
                              BorderRadius.circular(AppDimensions.radiusL),
                          color: currentIndex == 1
                              ? AppColors.transparentWhite
                              : Colors.transparent),
                      child: Text(
                        'Goods',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: AppDimensions.fontS,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (currentIndex == 0) HomePageFilterAppBar(),
          if (currentIndex == 0) CashGamesScreen(),
          if (currentIndex == 1)
            const SliverFillRemaining(
              child: Center(
                child: Text("No Goods Game for now."),
              ),
            )
        ],
      ),
    ));
  }
}
