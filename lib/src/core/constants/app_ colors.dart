import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFF45C43);
  static const Color secondaryColor = Color(0xFFEB3349);
  static const Color backgroundGray = Color(0xFFF6F6F6);
  static const Color lightGray = Color(0xFFE1E1E1);

  static const Color primaryColor10Opacity = Color(0x1AF45C43);
  static const Color secondaryColor10Opacity = Color(0x1AEB3349);

  static const LinearGradient buttonGradient = LinearGradient(
    colors: [
      primaryColor,
      secondaryColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient buttonGradient10Opacity = LinearGradient(
    colors: [
      primaryColor10Opacity,
      secondaryColor10Opacity,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
