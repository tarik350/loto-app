import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';
import 'package:mobile_app/src/core/widgets/game_button1.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';

class GameCard extends StatelessWidget {
  final String gameName;
  final int winningPrice;
  final int ticketPrice;
  final Color backgroundColor;
  final int soldTicketCount;
  final int lockedTicketsCount;
  final int freeTicketsCount;
  final int totalTicketCount;
  final int gameId;
  final GameCategory? category;

  const GameCard(
      {super.key,
      required this.backgroundColor,
      required this.gameName,
      required this.winningPrice,
      required this.ticketPrice,
      required this.soldTicketCount,
      required this.lockedTicketsCount,
      required this.freeTicketsCount,
      required this.totalTicketCount,
      required this.gameId,
      this.category});

  @override
  Widget build(BuildContext context) {
    double progress = totalTicketCount > 0
        ? (soldTicketCount + lockedTicketsCount) / totalTicketCount
        : 0.0;
    String ticketStatus;
    if (soldTicketCount + lockedTicketsCount == 0) {
      ticketStatus = 'No tickets sold yet';
    } else if (soldTicketCount + lockedTicketsCount == totalTicketCount) {
      ticketStatus = 'All tickets sold';
    } else {
      ticketStatus = '$freeTicketsCount Tickets left';
    }

    return Container(
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
                                              ticketPrice.toString(),
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
                                          left: AppDimensions.paddingXXS,
                                        ),
                                        child: ConstrainedBox(
                                          constraints:
                                              BoxConstraints(maxWidth: 100.w),
                                          child: Text(
                                            gameName,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: AppDimensions.fontM),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            GameButton1(
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
                                  context
                                      .read<GameBloc>()
                                      .add(GameEvent.updateGameId(gameId));
                                  context.router.push(GameRoute(
                                      category: category!, gameId: gameId));
                                })
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
                                      winningPrice.toString(),
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
                          ticketStatus,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
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
                            // Calculate the dynamic width based on progress
                            double progressWidth =
                                constraints.maxWidth * progress;

                            return Stack(
                              children: [
                                // Background container
                                Container(
                                  width: double.infinity,
                                  height: AppDimensions.spacingM,
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
                                  height: AppDimensions.spacingM,
                                  decoration: BoxDecoration(
                                    color: AppColors
                                        .goldenYellow, // Progress color
                                    borderRadius: BorderRadius.circular(
                                        AppDimensions.radiusS),
                                  ),
                                ),
                                // Text overlay
                              ],
                            );
                          },
                        )
                      ],
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
