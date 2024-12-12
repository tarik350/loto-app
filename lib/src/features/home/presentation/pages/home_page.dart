import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/cash_home_page.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/goods_home_page.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/home_page_filter_appbar.dart';

// Define color variables

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
// Mock data for game cards

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            AppColors.darkPurple,
            AppColors.vividViolet,
            AppColors.vividViolet,
            AppColors.darkPurple
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        SvgPicture.asset(
          'assets/images/home_bg.svg',
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
        ),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false,
              toolbarHeight: 75.h,
              pinned: currentIndex == 1,
              flexibleSpace: Container(
                // padding: EdgeInsets.only(top: AppDimensions.paddingXL),
                decoration:
                    const BoxDecoration(gradient: AppColors.secondaryGradient),
                child: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    centerTitle: true,
                    title: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppDimensions.radiusS)),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppDimensions.spacingXS),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 3, color: AppColors.darkBlue),
                            gradient: AppColors.homeTabSelectorBgGradient,
                            borderRadius:
                                BorderRadius.circular(AppDimensions.radiusS)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => setState(() => currentIndex = 0),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 5.h),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: AppColors.transparentWhite),
                                      borderRadius: BorderRadius.circular(
                                          AppDimensions.radiusL),
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
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 14.w),
                                  height: 50.h,
                                  width: 50.h,
                                  child: AppImages.cardSvg,
                                ),
                                GestureDetector(
                                  onTap: () => setState(() => currentIndex = 1),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.w, vertical: 5.h),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.transparentWhite),
                                        borderRadius: BorderRadius.circular(
                                            AppDimensions.radiusL),
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
                            Positioned(
                              right: 0, // Align the icon to the far right
                              child: GestureDetector(
                                child: Container(
                                    margin: EdgeInsets.only(
                                        right: AppDimensions.spacingM),
                                    child: AppImages.notification),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            if (currentIndex == 0) HomePageFilterAppBar(),
            if (currentIndex == 0) CashGamesScreen(),
            if (currentIndex == 1) const GoodsHomePage()
          ],
        ),
      ],
    ));
  }
}
