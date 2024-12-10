import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';
import 'package:mobile_app/src/features/game/presentation/page/game_page.dart';

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
        margin: EdgeInsets.only(bottom: AppDimensions.spacingM),
        padding: EdgeInsets.all(AppDimensions.spacingXS),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.4),
              blurRadius: 3.0,
              spreadRadius: 1,
              offset: const Offset(1, 1),
            )
          ],
          color: backgroundColor,
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        ),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(AppDimensions.radiusS)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusS),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 68.h,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimensions.paddingS),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            bottom: 12.h,
                                          ),
                                          width: 55.w,
                                          decoration: BoxDecoration(
                                            color: AppColors.strongGreen,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(
                                                    AppDimensions.radius3XL),
                                                bottomRight: Radius.circular(
                                                    AppDimensions.radius3XL)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              AppImages.goldCoin,
                                              SizedBox(
                                                  height:
                                                      AppDimensions.spacingXXS),
                                              Text(
                                                ticketPrice,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        AppDimensions.fontL),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: AppDimensions.paddingM),
                                          child: Text(
                                            gameName,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: AppDimensions.fontL),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  // Text(
                                  //   gameName,
                                  //   style: TextStyle(
                                  //       fontWeight: FontWeight.w400,
                                  //       color: Colors.white,
                                  //       fontSize: AppDimensions.fontM),
                                  // ),
                                  // SizedBox(
                                  //   height: 2.h,
                                  // ),
                                  // RichText(
                                  //     text: TextSpan(children: [
                                  //   TextSpan(
                                  //     text: "Win Up To $winningPrice ",
                                  //     style: TextStyle(
                                  //         fontWeight: FontWeight.w700,
                                  //         color: Colors.white,
                                  //         fontSize: AppDimensions.fontL),
                                  //   ),
                                  //   TextSpan(
                                  //       text: "ETB",
                                  //       style: TextStyle(
                                  //           fontSize: 12.sp,
                                  //           fontWeight: FontWeight.w400))
                                  // ])),
                                ],
                              ),
                              ShadeButton3(
                                width: 120.w,
                                bgGradientTopColor: AppColors.lightSkyBlue,
                                bgGradientBottomColor: AppColors.darkBlueShade,
                                borderGradientTopColor:
                                    AppColors.lightSkyBlue.withAlpha(10),
                                borderGradientBottomColor:
                                    AppColors.lightSkyBlue,
                                shadowColor: AppColors.darkBlueShade,
                                title: 'Play Now',
                                onPressed: () {
                                  // print('doing something ');
                                },
                              )
                              // Container(
                              //   padding: EdgeInsets.symmetric(
                              //       horizontal: AppDimensions.paddingXS,
                              //       vertical: AppDimensions.paddingXS),
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(
                              //           AppDimensions.radiusXL),
                              //       color: AppColors.transparentWhite),
                              //   child: RichText(
                              //       textAlign: TextAlign.end,
                              //       text: TextSpan(children: [
                              //         TextSpan(
                              //             style: TextStyle(
                              //                 fontSize: AppDimensions.fontXS,
                              //                 fontWeight: FontWeight.bold),
                              //             text: 'Ticket Price $ticketPrice '),
                              //         TextSpan(
                              //             text: "ETB",
                              //             style: TextStyle(
                              //                 fontSize: 10.sp,
                              //                 fontWeight: FontWeight.w400))
                              //       ])),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: backgroundColor,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimensions.paddingS,
                      vertical: AppDimensions.paddingS),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //winning prize
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 55.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppDimensions.radiusL),
                                  border: Border.all(
                                      width: 3, color: AppColors.shadeYellow),
                                  color: AppColors.lightYellow,
                                ),
                                child: Center(
                                  child: AppImages.trophy,
                                ),
                              ),
                              SizedBox(
                                width: AppDimensions.spacingS,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Winning prize',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: AppDimensions.fontS),
                                  ),
                                  SizedBox(
                                    height: AppDimensions.spacingXS,
                                  ),
                                  Row(
                                    children: [
                                      AppImages.bronzeCoin,
                                      SizedBox(
                                        width: AppDimensions.spacingXXS,
                                      ),
                                      Text(
                                        '100,100',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: AppDimensions.fontM),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Text(
                            '$ticketsLeft Tickets left',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
                      //progress bar for ticket purchase
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              double progress =
                                  0.8; // Example progress value (10%)
                              double progressWidth =
                                  constraints.maxWidth * progress;

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
                                    width:
                                        progressWidth, // Dynamic progress width
                                    height: AppDimensions
                                        .spacingM, // Use AppDimensions.spacingM
                                    decoration: BoxDecoration(
                                      color: AppColors
                                          .goldenYellow, // Progress color
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
