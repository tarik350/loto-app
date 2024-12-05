import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';

class GameCard extends StatelessWidget {
  final String gameName;
  final String winningPrice;
  final String ticketPrice;
  final Color backgroundColor;
  final String ticketsLeft;
  const GameCard(
      {super.key,
      required this.backgroundColor,
      required this.gameName,
      required this.winningPrice,
      required this.ticketPrice,
      required this.ticketsLeft});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(const GameRoute()),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: AppDimensions.paddingS),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: const Offset(0, 5),
          )
        ], borderRadius: BorderRadius.circular(AppDimensions.radiusL)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimensions.radiusL),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100.h, // Set your desired height
                color: backgroundColor, // Use the sky blue color
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        AppImages.grainTexture,
                        fit: BoxFit.cover,
                        color: Colors.black.withOpacity(
                            0.2), // Overlay with a semi-transparent black
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.all(AppDimensions.paddingS),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  gameName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: AppDimensions.fontM),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                    text: "Win Up To $winningPrice ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: AppDimensions.fontL),
                                  ),
                                  TextSpan(
                                      text: "ETB",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400))
                                ])),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.paddingXS,
                                  vertical: AppDimensions.paddingXS),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusXL),
                                  color: AppColors.transparentWhite),
                              child: RichText(
                                  textAlign: TextAlign.end,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        style: TextStyle(
                                            fontSize: AppDimensions.fontXS,
                                            fontWeight: FontWeight.bold),
                                        text: 'Ticket Price $ticketPrice '),
                                    TextSpan(
                                        text: "ETB",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400))
                                  ])),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.h,
                color: backgroundColor,
                padding: EdgeInsets.all(AppDimensions.paddingL),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$ticketsLeft Tickets left',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: AppDimensions.spacingXS,
                    ),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double progress = 0.8; // Example progress value (10%)
                        double progressWidth = constraints.maxWidth * progress;

                        return Stack(
                          children: [
                            // Background container
                            Container(
                              width: double.infinity,
                              height: AppDimensions
                                  .spacingM, // Use AppDimensions.spacingM
                              decoration: BoxDecoration(
                                color: Colors.white, // Background color
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusS),
                              ),
                            ),
                            // Progress container
                            Container(
                              width: progressWidth, // Dynamic progress width
                              height: AppDimensions
                                  .spacingM, // Use AppDimensions.spacingM
                              decoration: BoxDecoration(
                                color: AppColors.goldenYellow, // Progress color
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusS),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
