import 'package:flutter/material.dart';

class AppColors {
  static const Color secondaryColor = Color(0xFF6240C5);
  static const Color secondaryColorShade = Color(0xFF9C84FC);
  static const Color primaryColor = Color(0xFFD50DD5);
  static const Color tertiaryColor = Color(0xFFCA0018);

  // static const Color fourthColor = Color(0xFFFCC434);
  // static const Color gradientColor = Color(0xFFFF6A03);

  static const Color backgroundGray = Color(0xFFF6F6F6);
  static const Color lightGray = Color(0xFFE1E1E1);

  static const Color primaryColor10Opacity = Color(0x1AF45C43);
  static const Color secondaryColor10Opacity = Color(0x1AEB3349);
  static const Color tertiaryColor10Opacity = Color(0x1ACA0018);

  static const Color lavenderPurple = Color(0xFF784DC3);
  static const Color skyBlue = Color(0xFF3BBDDF);
  static const Color mintGreen = Color(0xFF43BA7F);

  static const Color goldenYellow = Color(0xFFF4BC35);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF9C84FC),
      Color(0xFFD50DD5),
      Color(0xFFD50DD5),
    ],
    stops: [0.0, 0.4, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
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
      Color(0xFF9C84FC),
      Color(0xFF9C84FC),
      Color(0xFFD50DD5),
      Color(0xFFD50DD5),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, .3, .8, 1],
  );

  static const Color lightTransparentGray = Color(0x61E0E061);

  static const Color transparentWhite = Color(0x50FFFFFF);

  //filter button combination colors
  //green
  static const Color backgroundGreen = Color(0xFF4DD784);
  static const Color foregroundGreen = Color(0xFF078E3D);

//yellow
  static const Color backgroundYellow = Color(0xFFFFDE90);
  static const Color foregroundOrange = Color(0xFFF4BC35);

  //blue
  static const Color backgroundBlue = Color(0xFF619CF9);
  static const Color foregroundBlue = Color(0xFF1E69E1);

  //red
  static const Color backgroundCoral = Color(0xFFFF8B78);
  static const Color foregroundRed = Color(0xFFF45C43);

  //ticket status color
  static const Color availableColor = Colors.white;
  static const Color lockedColor = Color(0xFFFF9800);
  static const Color reservedColor = Color(0xFFDC3545);

  //button colors
  //blue
  static const Color darkBlue = Color(0xFF0147E8);
  static const Color lightSkyBlue = Color(0xFF02AAF7);
  static const Color deepSkyBlue = Color(0xFF0147E8);
  static const Color darkBlueShade = Color(0xFF0C3582);

//pink
  static const Gradient pinkButtonGradinet = LinearGradient(
    colors: [
      Color(0xFFFF727B),
      Color(0xFFA60E70),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

//pink
  static const Color lightPink = Color(0xFFFF727B);
  static const Color darkPink = Color(0xFFA60E70);
  static const Color darkCrimson = Color(0xFF5A002E);

  //cash home page bg colors
  static const Color darkPurple = Color(0xFF581982);
  static const Color vividViolet = Color(0xFF8C2CA9);

//yellow varient
  static const Color lightYellow = Color(0xFFFFF7CE);
  static const Color shadeYellow = Color(0xFFF4E17A);

  static const Gradient homeTabSelectorBgGradient = LinearGradient(colors: [
    Color(0xFF11B7FC),
    Color(0xFF00EEFF),
    Color(0xFF00EEFF),
    Color(0xFF11B7FC),
  ]);

  static const Color strongGreen = Color(0xFF1CC818);

  static Color lightenColor(Color color, [double amount = 0.2]) {
    assert(amount >= 0 && amount <= 1);
    return Color.fromARGB(
      color.alpha,
      (color.red + ((255 - color.red) * amount)).toInt(),
      (color.green + ((255 - color.green) * amount)).toInt(),
      (color.blue + ((255 - color.blue) * amount)).toInt(),
    );
  }
}
