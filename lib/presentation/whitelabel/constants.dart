// file: constants.dart
import 'package:flutter/material.dart';

class AppConstants {
  static const int maxLastMessageLength = 20;
}

class AppBorders {
  static BorderRadius defaultRadius = BorderRadius.circular(20.0);
  static BorderRadius noRadius = BorderRadius.zero;
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
  static const double buttonWidthLarge = double.infinity;
  static const double buttonWidthNavbar = 257.2;

  static const double bottomNavBarHeight = kBottomNavigationBarHeight;
  static const Size appbarHeightSize = Size.fromHeight(kToolbarHeight);

  static const double modalControllerWidth = 50;
  static const double modalControllerHeight = 5;

  static const double iconSizeLarge = 32.0;
  static const double iconSizeExtreLarge = 48.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeSmall = 18.0;

  static const double notificationIndicator = 20;

  static const double searchElementContainerWidth = 113;
  static const double searchElementContainerHight = 30;
  static const double avatarSize = 60.0;
  static const double newsFeedImageHeight = 200.0;
  static const double newsFeedTextHeight = 300.0;
}
