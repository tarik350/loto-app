import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class CustomGameButton extends StatelessWidget {
  final String label;
  final Color baseColor;
  final VoidCallback onPressed;

  const CustomGameButton({
    required this.label,
    required this.baseColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black.withOpacity(.1)),
          gradient: LinearGradient(
            colors: [
              baseColor.withOpacity(0.1), // Bright top part
              baseColor,
              baseColor.withOpacity(.7),
            ],
            stops: const [
              0,
              0.3,
              1
            ], // Control position of gradient transitions
            // tileMode: TileMode.clamp,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.radiusL),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 4.0,
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
