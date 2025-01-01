import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/widgets/tab_scale_animation_wrapper.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';

class GameTicketPageheading extends StatelessWidget {
  final GameCategory category;
  final String title;

  const GameTicketPageheading(
      {super.key, required this.category, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: 14.w, vertical: AppDimensions.paddingS),
          height: 200.h,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.pentagonBgImagePath)),
          ),
        ),
        Positioned(
          top: 24.h,
          left: 45.w,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: AppDimensions.iconS,
                      )),
                ),
              ),
              SizedBox(
                width: AppDimensions.spacingM,
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    title,
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
                        ..shader = const LinearGradient(
                          colors: [
                            Color(0xFF9C84FC),
                            Color(0xFF9C84FC),
                            Color(0xFF9C84FC),
                            Color(0xFFD50DD5)
                          ],
                        ).createShader(const Rect.fromLTWH(0, 0, 200, 50))
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 8,
                    ),
                  ),
                  Text(
                    title,
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
        Positioned(
            top: 52.h,
            left: 55,
            right: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          category.winningPrize.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                          width: 60.h,
                          child: AppImages.gold,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppDimensions.paddingXXL),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            category.secondWinningPrize.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 60.h,
                            width: 60.h,
                            child: AppImages.bronze,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          category.thirdWinningPrize.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                          width: 60.h,
                          child: AppImages.silver,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
