import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart';

class TicketHistoryPage extends StatelessWidget {
  const TicketHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            title: CustomPageAppBar(title: 'History'),
          ),
        ),
        SliverAppBar(
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            title: Container(
              margin: EdgeInsets.only(
                  left: AppDimensions.spacingS,
                  right: AppDimensions.spacingS,
                  bottom: AppDimensions.spacingS,
                  top: AppDimensions.spacingM),
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                border: const GradientBoxBorder(
                    gradient: AppColors.secondaryGradient),
              ),
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                child: TabSelector(
                  firstTitle: 'Daily',
                  secondTitle: 'Weekly',
                  onTabSelected: (index) {},
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            SingleChildScrollView(
              child: Column(
                  children: List.generate(10, (index) {
                return Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(
                      vertical: AppDimensions.spacingS,
                      horizontal: AppDimensions.spacingS),
                  height: 80.h,
                  decoration: BoxDecoration(
                      color: AppColors.vividViolet,
                      borderRadius:
                          BorderRadius.circular(AppDimensions.radiusS)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingS),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            AppImages.icon1,
                            SizedBox(
                              width: AppDimensions.spacingS,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Asbeza',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: AppDimensions.fontL),
                                ),
                                Text("Asbeza_E01",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: AppDimensions.fontS,
                                        color: Colors.white.withOpacity(.7)))
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimensions.spacingM,
                              vertical: AppDimensions.spacingS),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                AppDimensions.radiusCircular),
                            color: AppColors.transparentWhite,
                          ),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Ticket price 100 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppDimensions.fontM)),
                            TextSpan(
                                text: "ETB",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp))
                          ])),
                        )
                      ],
                    ),
                  ),
                );
              }).toList()),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ))
      ],
    ));
  }
}
