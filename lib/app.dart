import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_app/app_cubit.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/home/presentation/pages/home_page.dart';

@RoutePage()
class AppScreen extends StatelessWidget {
  AppScreen({super.key});
  final _pageController = PageController(keepPage: true);
  final List<Map<String, dynamic>> iconList = [
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
          // backgroundColor: AppColors.tertiaryColor,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius:
                    BorderRadius.circular(AppDimensions.radiusCircular)),
            width: double.maxFinite,
            height: double.maxFinite,
            child: Center(
              child: SvgPicture.asset(
                AppImages.videoIconPath,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BlocProvider(
          create: (context) => AppCubit(0),
          child: BlocBuilder<AppCubit, int>(
            builder: (context, state) {
              return AnimatedBottomNavigationBar.builder(
                height: 60.h,
                activeIndex: state,
                itemCount: iconList.length,
                tabBuilder: (index, isActive) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 20.h,
                        child: SvgPicture.asset(
                          iconList[index]['icon'],
                          colorFilter: ColorFilter.mode(
                              isActive
                                  ? Colors.white
                                  : Colors.white.withOpacity(.5),
                              BlendMode.srcIn),
                        ),
                      ),
                      SizedBox(
                        height: AppDimensions.spacingXS,
                      ),
                      Text(
                        iconList[index]['label'],
                        style: TextStyle(
                            color: isActive
                                ? Colors.white
                                : Colors.white.withOpacity(.5),
                            fontWeight:
                                isActive ? FontWeight.bold : FontWeight.normal),
                      ),
                    ],
                  );
                },
                shadow: const Shadow(color: Colors.black, offset: Offset(0, 1)),
                backgroundGradient: AppColors.primaryGradient,
                gapLocation: GapLocation.center,
                notchMargin: 0,
                leftCornerRadius: AppDimensions.radiusS,
                rightCornerRadius: AppDimensions.radiusS,
                notchSmoothness: NotchSmoothness.sharpEdge,
                onTap: (index) {
                  context.read<AppCubit>().switchTab(index);

                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },

                //other params
              );
            },
          ),
        ),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            FadedSlideAnimation(
              beginOffset: const Offset(0, 0.3),
              endOffset: const Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
              child: const HomeScreen(),
            ),
            FadedSlideAnimation(
              beginOffset: const Offset(0, 0.3),
              endOffset: const Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
              child: Container(
                color: Colors.blue,
              ),
            ),
            FadedSlideAnimation(
              beginOffset: const Offset(0, 0.3),
              endOffset: const Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
              child: Container(
                color: Colors.green,
              ),
            ),
            FadedSlideAnimation(
              beginOffset: const Offset(0, 0.3),
              endOffset: const Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ));
  }
}
