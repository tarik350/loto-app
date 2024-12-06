import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';

class HomePageFilterAppBar extends StatelessWidget {
  HomePageFilterAppBar({super.key});

  // we are going to load teh came categories in here
  final List<Map<String, dynamic>> games = [
    {
      "name": "Asbeza",
      "image": AppImages.icon1,
      'bg': AppColors.backgroundYellow,
      'fg': AppColors.foregroundOrange,
    },
    {
      "name": "Shop",
      "image": AppImages.icon2,
      'bg': AppColors.backgroundBlue,
      'fg': AppColors.foregroundBlue
    },
    {
      "name": "Guzo",
      "image": AppImages.icon3,
      'bg': AppColors.backgroundCoral,
      'fg': AppColors.foregroundRed
    },
    {
      "name": "Feta",
      "image": AppImages.icon4,
      'bg': AppColors.backgroundGreen,
      'fg': AppColors.foregroundGreen
    },
    {
      "name": "Feta",
      "image": AppImages.icon4,
      'bg': AppColors.backgroundGreen,
      'fg': AppColors.foregroundGreen
    },
    {
      "name": "Guzo",
      "image": AppImages.icon3,
      'bg': AppColors.backgroundCoral,
      'fg': AppColors.foregroundRed
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 120.h,
      shape: ContinuousRectangleBorder(
        side: const BorderSide(color: AppColors.tertiaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppDimensions.radiusL),
          bottomRight: Radius.circular(AppDimensions.radiusL),
        ),
      ),
      backgroundColor: AppColors.tertiaryColor,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingXS,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.filter_list,
                    color: Colors.white,
                    size: AppDimensions.iconS,
                  ),
                  SizedBox(
                    width: AppDimensions.spacingXS,
                  ),
                  Text(
                    'Filters',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppDimensions.fontS,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(games.length, (index) {
                    final category = games[index];
                    return Container(
                      margin: EdgeInsets.only(
                          top: AppDimensions.paddingXS,
                          right: AppDimensions.paddingS),
                      width: 60.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // Shadow color
                            offset: const Offset(0, 6), // Only vertical offset
                            blurRadius: 0, // Blur effect
                            spreadRadius: 0, // No spread
                          ),
                        ],
                        color: category['bg'],
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusM),
                        border: Border.all(width: 5, color: Colors.white),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: FractionallySizedBox(
                          heightFactor: 0.9,
                          widthFactor: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(AppDimensions.radiusS)),
                              color: category['fg'],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  width: 30.h,
                                  child: category['image'],
                                ),
                                Text(
                                  category['name'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppDimensions.fontXS),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
