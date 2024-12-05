import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImages {
  // Base paths
  static const String _basePath = 'assets/images';

  static const String ethiopianFlag = '$_basePath/ethiopian_flag.png';
  static const String grainTexture = '$_basePath/grain_texture.png';
  static final SvgPicture cardSvg = SvgPicture.asset(
    '$_basePath/cards.svg',
  );
  static final SvgPicture icon1 = SvgPicture.asset('$_basePath/icon1.svg');
  static final SvgPicture icon2 = SvgPicture.asset('$_basePath/icon2.svg');
  static final SvgPicture icon3 = SvgPicture.asset('$_basePath/icon3.svg');
  static final SvgPicture icon4 = SvgPicture.asset('$_basePath/icon4.svg');

  //bottom navigation icons
  static final SvgPicture homeIcon =
      SvgPicture.asset('$_basePath/home_icon.svg');
  static final SvgPicture profileIcon =
      SvgPicture.asset('$_basePath/profile_icon.svg');

  static final SvgPicture ticketIcon = SvgPicture.asset(
    '$_basePath/ticket_icon.svg',
  );
  static final SvgPicture historyIcon =
      SvgPicture.asset('$_basePath/history_icon.svg');
  static final SvgPicture videoIcon =
      SvgPicture.asset('$_basePath/video_icon.svg');

  //bottom nav bar icons path
  static const String homeIconPath = '$_basePath/home_icon.svg';
  static const String profileIconPath = '$_basePath/profile_icon.svg';
  static const String ticketIconPath = '$_basePath/ticket_icon.svg';
  static const String historyIconPath = '$_basePath/history_icon.svg';
  static const String videoIconPath = '$_basePath/video_icon.svg';

  //onboarding icons
  static final SvgPicture silver = SvgPicture.asset('$_basePath/silver.svg');
  static final SvgPicture bronze = SvgPicture.asset('$_basePath/bronze.svg');
  static final SvgPicture gold = SvgPicture.asset('$_basePath/gold.svg');
}
