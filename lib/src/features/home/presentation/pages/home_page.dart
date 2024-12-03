import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

// Mock data for game cards
  int _bottomNavIndex = 0;
  List<Map<String, dynamic>> iconList = [
    {
      "icon": AppImages.homeIconPath,
      "label": "Home",
    },
    {
      "icon": AppImages.ticketIconPath,
      "label": "My Ticket",
    },
    {
      "icon": AppImages.historyIconPath,
      "label": "History",
    },
    {
      "icon": AppImages.profileIconPath,
      "label": "Profile",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColors.tertiaryColor,
        child: SvgPicture.asset(
          AppImages.videoIconPath,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 60.h,

        itemCount: iconList.length,
        tabBuilder: (index, isActive) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
              width: 20.h,
              child: SvgPicture.asset(
                iconList[index]['icon'],
                colorFilter: ColorFilter.mode(
                    isActive ? Colors.white : Colors.white.withOpacity(.5),
                    BlendMode.srcIn),
              ),
            ),
            SizedBox(
              height: AppDimensions.spacingXS,
            ),
            Text(
              iconList[index]['label'],
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.white.withOpacity(.5),
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ),
        // shadow: const Shadow(color: Colors.black, offset: Offset(0, 1)),
        backgroundColor: AppColors.tertiaryColor,

        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchMargin: 0,
        leftCornerRadius: AppDimensions.radiusS,
        rightCornerRadius: AppDimensions.radiusS,
        notchSmoothness: NotchSmoothness.sharpEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 5.h),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 5.h),
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
            HomePageFilterAppBar(),
            currentIndex == 0 ? CashHomePage() : const GoodsHomePage(),
          ],
        ),
      ),
    );
  }
}
