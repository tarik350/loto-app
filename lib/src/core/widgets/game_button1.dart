import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/widgets/tab_scale_animation_wrapper.dart';

class GameButton1 extends StatelessWidget {
  final double width;
  final Color bgGradientTopColor;
  final Color bgGradientBottomColor;
  final Color borderGradientTopColor;
  final Color borderGradientBottomColor;
  final Color shadowColor;
  final String title;
  final VoidCallback onPressed;

  const GameButton1(
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
    return ScaleOnTapAnimationWrapper(
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
