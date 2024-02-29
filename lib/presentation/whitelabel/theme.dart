import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

ThemeData theme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    primaryColor: CustomColors.primaryColor,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(),
    ),
    textTheme: TextTheme(
      // Display
      displayLarge: displayLargeTextStyle(CustomColors.primaryTextColor),
      displayMedium: displayMediumTextStyle(CustomColors.primaryTextColor),
      displaySmall: displaySmallTextStyle(CustomColors.primaryTextColor),
      // Headline
      headlineLarge: headlineLargeTextStyle(CustomColors.primaryTextColor),
      headlineMedium: headlineMediumTextStyle(CustomColors.primaryTextColor),
      headlineSmall: headlineSmallTextStyle(CustomColors.primaryTextColor),
      // Title
      titleLarge: titleLargeTextStyle(CustomColors.primaryTextColor),
      titleMedium: titleMediumTextStyle(CustomColors.primaryTextColor),
      titleSmall: titleSmallTextStyle(CustomColors.primaryTextColor),
      // Body
      bodyLarge: bodyLargeTextStyle(CustomColors.primaryTextColor),
      bodyMedium: bodyMediumTextStyle(CustomColors.primaryTextColor),
      bodySmall: bodySmallTextStyle(CustomColors.primaryTextColor),
      // Label
      labelLarge: labelLargeTextStyle(CustomColors.primaryTextColor),
      labelMedium: labelMediumTextStyle(CustomColors.primaryTextColor),
      labelSmall: labelSmallTextStyle(CustomColors.primaryTextColor),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CustomColors.errorBorderColor,
        ),
      ),
    ),
    iconTheme: const IconThemeData(
        color: CustomColors.primaryTextColor,
        size: AppDimensions.iconSizeLarge),
    appBarTheme: const AppBarTheme(
      backgroundColor: CustomColors.backgroundColor,
      elevation: 0,
      surfaceTintColor: CustomColors.backgroundColor,
      iconTheme: IconThemeData(color: CustomColors.primaryTextColor),
    ),
    colorScheme: const ColorScheme.light().copyWith(
        background: CustomColors.backgroundColor,
        primary: CustomColors.primaryColor,
        error: CustomColors.errorTextColor),
    cardColor: CustomColors.backgroundColor);
