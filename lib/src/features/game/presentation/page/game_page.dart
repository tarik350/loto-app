import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/expandable_search.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/filter_dropdown.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/ticket_grid.dart';
import 'package:mobile_app/src/features/game/presentation/widgets/ticket_status_indicator.dart';

@RoutePage()
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Stack(
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            padding: EdgeInsets.all(6.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusCircular),
                                border:
                                    Border.all(width: 2, color: Colors.white)),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: AppDimensions.iconS,
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
                                ..shader = const LinearGradient(
                                  colors: [
                                    Color(0xFF9C84FC),
                                    Color(0xFF9C84FC),
                                    Color(0xFF9C84FC),
                                    Color(0xFFD50DD5)
                                  ],
                                ).createShader(
                                    const Rect.fromLTWH(0, 0, 200, 50))
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
                                const Text(
                                  '100,000',
                                  style: TextStyle(
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
                              padding: EdgeInsets.only(
                                  top: AppDimensions.paddingXXL),
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
                                const Text(
                                  '1,000',
                                  style: TextStyle(
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
            ),
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

                  Expanded(flex: 4, child: PaginatedGrid()),
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),

                  //ticket status color
                  TicketStatusColorIndicatorWidget(),

                  //selected tickets section
                  Container(
                    margin: EdgeInsets.only(
                        top: AppDimensions.paddingM,
                        left: AppDimensions.paddingS,
                        right: AppDimensions.paddingS),
                    height: 60.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.secondaryColor.withOpacity(.5),
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusS)),
                    child: Center(
                      child: Text(
                        'ምንም ቲኬታ ገና አልመረጡም!',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: AppDimensions.fontS),
                      ),
                    ),
                  ),

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
                          ShadeButton3(
                            width: 120.w,
                            bgGradientTopColor: AppColors.lightSkyBlue,
                            bgGradientBottomColor: AppColors.darkBlueShade,
                            borderGradientTopColor:
                                AppColors.lightSkyBlue.withAlpha(10),
                            borderGradientBottomColor: AppColors.lightSkyBlue,
                            shadowColor: AppColors.darkBlueShade,
                            title: 'ትኬት ግዛ',
                            onPressed: () {
                              // print('doing something ');
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

class ShadeButton extends StatelessWidget {
  const ShadeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.buttonM,
      width: 140.w,
      decoration: BoxDecoration(
        color: AppColors.deepSkyBlue,
        border: GradientBoxBorder(
            width: 4,
            gradient: LinearGradient(colors: [
              AppColors.lightSkyBlue,
              AppColors.lightSkyBlue.withAlpha(50)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        borderRadius:
            BorderRadius.circular(AppDimensions.radiusS), // Rounded corners
        boxShadow: const [
          BoxShadow(
            color: AppColors.darkBlueShade,
            offset: Offset(0, 6),
            blurRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              heightFactor: .6,
              widthFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(AppDimensions.radiusCircular),
                        bottomRight:
                            Radius.circular(AppDimensions.radiusCircular)),
                    color: AppColors.lightSkyBlue.withOpacity(.4)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Buy Ticket',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(1, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ShadeButton2 extends StatelessWidget {
  const ShadeButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingXL),
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lightenColor(AppColors.darkBlue, .6),
            AppColors.lightenColor(AppColors.darkBlue, .4),
            AppColors.darkBlue,
            AppColors.lightenColor(AppColors.darkBlue, .2),
          ],
          stops: const [0, .1, .85, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius:
            BorderRadius.circular(AppDimensions.radiusM), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Buy Ticket',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(1, 2),
                blurRadius: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShadeButton3 extends StatelessWidget {
  final double width;
  final Color bgGradientTopColor;
  final Color bgGradientBottomColor;
  final Color borderGradientTopColor;
  final Color borderGradientBottomColor;
  final Color shadowColor;
  final String title;
  final VoidCallback onPressed;

  const ShadeButton3(
      {super.key,
      required this.width,
      required this.bgGradientTopColor,
      required this.bgGradientBottomColor,
      required this.borderGradientTopColor,
      required this.borderGradientBottomColor,
      required this.shadowColor,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.only(top: AppDimensions.spacingS),
          height: double.maxFinite,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusS),
            child: Stack(
              children: [
                Container(
                  height: AppDimensions.buttonM,
                  width: width,
                  decoration: BoxDecoration(
                    border: GradientBoxBorder(
                      width: 5,
                      gradient: LinearGradient(
                        colors: [
                          borderGradientTopColor,
                          borderGradientBottomColor
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0, 1],
                      ),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        bgGradientTopColor,
                        bgGradientBottomColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        offset: const Offset(0, 5),
                        blurRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.fontM,
                        shadows: [
                          BoxShadow(
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(.3),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -70,
                  left: -45,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: width + 90,
                    height: AppDimensions.buttonM + 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(AppDimensions.radiusCircular),
                        bottomRight:
                            Radius.circular(AppDimensions.radiusCircular),
                      ),
                    ),
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

class ScaleOnTap extends StatefulWidget {
  final Widget child;

  const ScaleOnTap({super.key, required this.child});

  @override
  _ScaleOnTapState createState() => _ScaleOnTapState();
}

class _ScaleOnTapState extends State<ScaleOnTap> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _scale = 0.9;
        });
      },
      onTapUp: (_) {
        setState(() {
          _scale = 1.0;
        });
      },
      onTapCancel: () {
        setState(() {
          _scale = 1.0;
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: widget.child,
      ),
    );
  }
}
