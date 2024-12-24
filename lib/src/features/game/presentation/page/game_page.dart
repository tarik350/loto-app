import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/widgets/game_button1.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/expandable_search.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/filter_dropdown.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/game_ticket_page_heading.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/game_tickets_grid.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/locked_ticket_list.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/ticket_status_indicator.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';

@RoutePage()
class GameScreen extends StatelessWidget {
  final GameCategory category;
  final int gameId;
  const GameScreen({super.key, required this.category, required this.gameId});

  @override
  Widget build(BuildContext context) {
    context.read<GameBloc>().add(GameEvent.fetchTickets(gameId));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            GameTicketPageheading(category: category),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  gradient: AppColors.backgroundGradient,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppDimensions.radiusL),
                      topLeft: Radius.circular(AppDimensions.radiusL))),
              child: Column(
                children: [
                  /// Game card section header
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingM,
                        vertical: AppDimensions.paddingM),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 32.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppDimensions.paddingM),
                                foregroundColor: AppColors.secondaryColor,
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              onPressed: () {},
                              child: const Text('ቁጥር ገምት')),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ExpandableSearchField(),
                            SizedBox(
                              width: AppDimensions.paddingXS,
                            ),
                            const FilterDropdown()
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(flex: 4, child: GameTicketsGrid()),
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),

                  //ticket status color
                  TicketStatusColorIndicatorWidget(),

                  //selected tickets section
                  const LockedTicketList(),
                  //buy ticket section
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: AppDimensions.paddingXXS,
                          horizontal: AppDimensions.paddingM),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ተቅላላ ሂሳብ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: AppDimensions.fontS),
                              ),
                              Text(
                                '500 ብር',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: AppDimensions.fontM),
                              )
                            ],
                          ),
                          // const ShadeButton()
                          // const ShadeButton2()
                          GameButton1(
                            width: 120.w,
                            bgGradientTopColor: AppColors.lightSkyBlue,
                            bgGradientBottomColor: AppColors.darkBlueShade,
                            borderGradientTopColor:
                                AppColors.lightSkyBlue.withAlpha(10),
                            borderGradientBottomColor: AppColors.lightSkyBlue,
                            shadowColor: AppColors.darkBlueShade,
                            title: 'ትኬት ግዛ',
                            onPressed: () {
                              //TODO:
                              //CHECK IF USER HAS AUTHENTICATED

                              //IF AUTHENTICATED CHECK IF USER PHONE SUPPORTS BIOMETRIC AUTHENTICATED
                              //IF IT SUPPORTS PROMPT USER TO PROVIDE THIER BIOMETRIC
                              //OTHER WISE SHOW A DIALOG FOR USER TO ENTER THIER PASSWORD

                              //ON PASSSWORD OR BIOMETRIC SUCCESS MAKE A REQUEST TO INITIATE TICKET PURCHASE

                              // ToastManager.show(
                              //     context: context,
                              //     icon: Icon(
                              //       Icons.check_circle,
                              //       color: Colors.green,
                              //       size: AppDimensions.iconS,
                              //     ),
                              //     message:
                              //         "This is a very long message for the toast to observe its behavior. this is even more logner text to really toast to see how it really look on a very large text");
                              // DialogManager.showCustomDialog(
                              //     context,
                              //     CustomDialog(
                              //       title: "Release Lock for Ticket",
                              //       actions: [
                              //         Expanded(
                              //           child: GameButton1(
                              //             width: double.maxFinite,
                              //             height: AppDimensions.buttonL,
                              //             bgGradientTopColor:
                              //                 AppColors.lightSkyBlue,
                              //             bgGradientBottomColor:
                              //                 AppColors.darkBlueShade,
                              //             borderGradientTopColor: AppColors
                              //                 .lightSkyBlue
                              //                 .withAlpha(10),
                              //             borderGradientBottomColor:
                              //                 AppColors.lightSkyBlue,
                              //             shadowColor: AppColors.darkBlueShade,
                              //             title: 'Release',
                              //             onPressed: () {
                              //               //todo make a request to release lock for a given ticket number
                              //             },
                              //           ),
                              //         ),
                              //         SizedBox(
                              //           width: AppDimensions.spacingM,
                              //         ),
                              //         Expanded(
                              //           child: GameButton1(
                              //             width: double.maxFinite,
                              //             height: AppDimensions.buttonL,
                              //             bgGradientTopColor:
                              //                 AppColors.lightPink,
                              //             bgGradientBottomColor:
                              //                 AppColors.darkPink,
                              //             borderGradientTopColor: AppColors
                              //                 .lightPink
                              //                 .withAlpha(100),
                              //             borderGradientBottomColor: AppColors
                              //                 .darkCrimson
                              //                 .withOpacity(.5),
                              //             shadowColor: AppColors.darkCrimson,
                              //             title: 'cancel',
                              //             onPressed: () {
                              //               Navigator.pop(context);
                              //             },
                              //           ),
                              //         )
                              //       ],
                              //       child: Text(
                              //         "Are you sure you want to relase lock for ticket number 12?",
                              //         textAlign: TextAlign.center,
                              //         style: TextStyle(
                              //             color: Colors.grey.shade700,
                              //             fontSize: AppDimensions.fontM,
                              //             fontWeight: FontWeight.w600),
                              //       ),
                              //     ));
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
