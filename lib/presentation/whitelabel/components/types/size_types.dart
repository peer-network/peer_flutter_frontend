import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

enum SizeType {
  small,
  medium,
  large,
  extraLarge,
}

// iconsize extension

extension IconSizeTypeExtension on SizeType {
  double iconSize(BuildContext context) {
    switch (this) {
      case SizeType.small:
        return AppDimensions.iconSizeSmall;
      case SizeType.medium:
        return AppDimensions.iconSizeMedium;
      case SizeType.large:
        return AppDimensions.iconSizeLarge;
      case SizeType.extraLarge:
        return AppDimensions.iconSizeExtreLarge;
      default:
        return AppDimensions.iconSizeMedium;
    }
  }
}
