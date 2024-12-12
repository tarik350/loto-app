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

  static final SvgPicture pentagonBg =
      SvgPicture.asset('$_basePath/pentagon_bg.svg');
  static final SvgPicture goldCoin =
      SvgPicture.asset('$_basePath/gold_coin.svg');
  static final SvgPicture bronzeCoin =
      SvgPicture.asset('$_basePath/bronze_coin.svg');
  static const String pentagonBgImagePath = '$_basePath/pentagon_bg.png';
  static final SvgPicture trophy = SvgPicture.asset('$_basePath/trophy.svg');
  static final SvgPicture notification =
      SvgPicture.asset('$_basePath/notification.svg');

  static const String carouselBanner = '$_basePath/carouse_banner.png';

  static final SvgPicture cashHomePageBg = SvgPicture.asset(
    '$_basePath/home_bg.svg',
    height: double.infinity,
    width: double.infinity,
    fit: BoxFit.cover,
  );

  /// profile page
  static final SvgPicture userIcon = SvgPicture.asset('$_basePath/user.svg');
  static final SvgPicture userAddIcon =
      SvgPicture.asset('$_basePath/user-add.svg');
  static final SvgPicture privacyIcon =
      SvgPicture.asset('$_basePath/privacy.svg');
  static final SvgPicture notificationBlackIcon =
      SvgPicture.asset('$_basePath/notification-black.svg');
  static final SvgPicture logoutIcon =
      SvgPicture.asset('$_basePath/logout.svg');
  static final SvgPicture helpIcon = SvgPicture.asset('$_basePath/help.svg');
  static final SvgPicture creditCardIcon =
      SvgPicture.asset('$_basePath/credit-card.svg');
  static final SvgPicture myOrderIcon =
      SvgPicture.asset('$_basePath/order.svg');
  static final SvgPicture inviteFreindsIcon =
      SvgPicture.asset('$_basePath/user-add.svg');
}
