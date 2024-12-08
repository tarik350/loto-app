import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';

class GoodsHomePage extends StatelessWidget {
  const GoodsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.w),
            height: 230,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.pentagonBgImagePath)),
            ),
          ),
          Positioned(
            top: 30,
            left: 45,
            child: SizedBox(
              // width: 120,
              // color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(6.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                AppDimensions.radiusCircular),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 18,
                        )),
                  ),
                  SizedBox(width: 45.w),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Asbeza01',
                        style: TextStyle(
                          fontSize: AppDimensions.fontXXL,
                          shadows: [
                            BoxShadow(
                                spreadRadius: .3,
                                blurRadius: 8,
                                color: Colors.black.withOpacity(.8),
                                offset: const Offset(0, 5))
                          ],
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            // ..color = Colors.red
                            // ..blendMode = BlendMode.clear
                            ..shader = LinearGradient(
                              colors: [
                                AppColors.primaryColor,
                                AppColors.secondaryColor.withOpacity(.4)
                              ],
                            ).createShader(const Rect.fromLTWH(0, 0, 200, 50))
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 8,
                        ),
                      ),
                      Text(
                        'Asbeza01',
                        style: TextStyle(
                          // letterSpacing: 0,
                          fontSize: AppDimensions.fontXXL,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 55,
              left: 55,
              right: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.white,
                    width: 300,
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '100,000',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 65.h,
                              width: 65.h,
                              child: AppImages.gold,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                '10,000',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 65.h,
                                width: 65.h,
                                child: AppImages.bronze,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '1,000',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 65.h,
                              width: 65.h,
                              child: AppImages.silver,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
