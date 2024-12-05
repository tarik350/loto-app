import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFF45C43);
  static const Color gradientColor = Color(0xFFFF6A03);

  static const Color secondaryColor = Color(0xFFEB3349);
  static const Color tertiaryColor = Color(0xFFCA0018);
  static const Color fourthColor = Color(0xFFFCC434);

  static const Color backgroundGray = Color(0xFFF6F6F6);
  static const Color lightGray = Color(0xFFE1E1E1);

  static const Color primaryColor10Opacity = Color(0x1AF45C43);
  static const Color secondaryColor10Opacity = Color(0x1AEB3349);
  static const Color tertiaryColor10Opacity = Color(0x1ACA0018);

  static const Color lavenderPurple = Color(0xFF784DC3);
  static const Color skyBlue = Color(0xFF3BBDDF);
  static const Color mintGreen = Color(0xFF43BA7F);

  static const Color goldenYellow = Color(0xFFF4BC35);

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

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [
      Color(0xFFFF6A00), // First color
      Color(0xFFEE0979), // Second color
    ],
    begin: Alignment.topCenter, // Start at the top center
    end: Alignment.bottomRight, // End at the bottom right
    stops: [0.6, 1],
  );

  static const Color lightTransparentGray = Color(0x61E0E061);

  static const Color transparentWhite = Color(0x50FFFFFF); // 50% opacity

  static const Color backgroundGreen =
      Color(0xFF4DD784); // Light green for background
  static const Color foregroundGreen =
      Color(0xFF078E3D); // Dark green for foreground
  static const Color backgroundYellow = Color(0xFFFFDE90);
  static const Color foregroundOrange = Color(0xFFF4BC35);
  // Define color variables
  static const Color backgroundBlue = Color(0xFF619CF9);
  static const Color foregroundBlue = Color(0xFF1E69E1);
  static const Color backgroundCoral = Color(0xFFFF8B78);
  static const Color foregroundRed = Color(0xFFF45C43);
}
