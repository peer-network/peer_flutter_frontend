// file: constants.dart
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';

class AppValues {
  static const int defaultLimit = 50;
  static const int maxLastMessageLength = 20;
}

class AppDuration {
  static const int toastDuration = 2;

  static const Duration imageSliderDuration = Duration(milliseconds: 0);
  static const Duration imagePostWidgetTransitionDuration =
      Duration(milliseconds: 250);
}

class AppBorders {
  static BorderRadius creditsSourceBarRadius = BorderRadius.circular(8.0);
  static BorderRadius dragHandleRadius = BorderRadius.circular(3);
  static BorderRadius defaultRadius = BorderRadius.circular(20.0);
  static BorderRadius noRadius = BorderRadius.zero;
  static BorderRadius profileTextPostCardRadius = BorderRadius.circular(5);
  static BorderRadius imageSliderRadius = BorderRadius.circular(5.0);
}

class AppMargins {
  static const double tiny = 4.0;
}

class AppPaddings {
  static const double tiny = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double extraLarge = 32.0;
  static const double gigaLarge = 64.0;
}

class AppDimensions {
  // Button dimensions
  static const double buttonHeightSmall = 30.0;
  static const double buttonWidthSmall = 120.0;
  static const double buttonHeightLarge = 53.0;
  static const double buttonWidthNavbar = 257.2;

  static const double footerHeight = 76.0;

  // Avatar dimensions
  static const double avatarSize = 60.0;
  static const double avatarSizeSmall = 16.0;

  static const double bottomNavBarHeight = kBottomNavigationBarHeight;
  static const Size appbarHeightSize = Size.fromHeight(kToolbarHeight);

  static const double modalControllerWidth = 50;
  static const double modalControllerHeight = 5;

  static const double iconSizeLarge = 32.0;
  static const double iconSizeExtreLarge = 48.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeSmall = 18.0;
  static const double iconSizeTiny = 10.0;

  static const double notificationIndicatorCicleSize = 25;

  static const double searchElementContainerWidth = 113;
  static const double searchElementContainerHight = 30;
  static const double newsFeedImageHeight = 200.0;
  static const double newsFeedTextHeight = 300.0;

  static const double profileTextPostsSliderCardWidth = 290.0;
  static const double profileTextPostsSliderCardMaxHeight = 500.0;

  static const double createPostEmptyImageHeight = 144;
  static const double textInputCornerRaidus = 30.0;
  static const double chatBubbleRadius = 20.0;

  static const double dragHandleHeight = 6.0;

  static const double dropDownBorderWidth = 2.0;
  static const double feedDropDownButtonHeight = 40.0;

  static const double imageSliderBarWidth = 75.0;

  static const int dropDownButtonElevation = 16;
  static const double textPostSpacing = 12.0;
}

// aspect ratios
class AppAspectRatios {
  static double profileImageAspectRatio = AspectRatios.ar_19_9.doubleValue();
}
