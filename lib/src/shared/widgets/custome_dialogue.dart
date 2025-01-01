import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget> actions;
  final EdgeInsets contentPadding;
  final EdgeInsets? insetPadding;

  const CustomDialog({
    required this.title,
    required this.child,
    this.insetPadding,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    this.actions = const [],
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      alignment: Alignment.center,
      insetPadding: insetPadding,
      insetAnimationCurve: Curves.slowMiddle,
      insetAnimationDuration: const Duration(milliseconds: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: BoxDecoration(
                gradient: AppColors.secondaryGradient,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppDimensions.radiusL),
                    topRight: Radius.circular(AppDimensions.radiusL))),
            child: Center(
              child: DefaultTextStyle(
                style: TextStyle(
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
                child: Text(title),
              ),
            ),
          ),

          // Main Content
          Container(
            decoration: BoxDecoration(
                color: AppColors.lightGray,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppDimensions.radiusL),
                    bottomRight: Radius.circular(AppDimensions.radiusL))),
            padding: contentPadding,
            child: Column(
              children: [
                child,

                const SizedBox(height: 16),
                // Actions
                if (actions.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: actions,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DialogManager {
  static void showCustomDialog(BuildContext context, Widget dialog) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Center(
              child: ScaleTransition(
                scale: TweenSequence<double>([
                  TweenSequenceItem(
                      tween: Tween(begin: 0.0, end: 1.2),
                      weight: 30), // Scale up slightly
                  TweenSequenceItem(
                      tween: Tween(begin: 1.2, end: 0.8),
                      weight: 40), // Scale down slightly more
                  TweenSequenceItem(
                      tween: Tween(begin: 0.8, end: 1.0),
                      weight: 30), // Settle to full size
                ]).chain(CurveTween(curve: Curves.easeOut)).animate(animation),
                child: dialog,
              ),
            ),
          ],
        ),
        transitionsBuilder: (_, animation, secondaryAnimation, child) {
          return child;
        },
        transitionDuration: const Duration(milliseconds: 800),
        reverseTransitionDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
