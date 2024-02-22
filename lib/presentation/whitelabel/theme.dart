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
      displayLarge: displayLargeTextStyle(CustomColors.primaryTextColor),
      displayMedium: displayMediumTextStyle(CustomColors.primaryTextColor),
      displaySmall: displaySmallTextStyle(CustomColors.primaryTextColor),
      headlineMedium: headlineMediumTextStyle(CustomColors.primaryTextColor),
      headlineSmall: headlineSmallTextStyle(CustomColors.primaryTextColor),
      titleLarge: titleLargeTextStyle(CustomColors.primaryTextColor),
      titleMedium: titleMediumTextStyle(CustomColors.primaryTextColor),
      titleSmall: titleSmallTextStyle(CustomColors.primaryTextColor),
      bodyLarge: bodyLargeTextStyle(CustomColors.primaryTextColor),
      bodyMedium: bodyMediumTextStyle(CustomColors.primaryTextColor),
      labelLarge: labelLargeTextStyle(CustomColors.primaryTextColor),
      bodySmall: bodySmallTextStyle(CustomColors.primaryTextColor),
      labelSmall: labelSmallTextStyle(CustomColors.primaryTextColor),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CustomColors.errorBorderColor,
        ),
      ),
    ),
    // cardTheme: const CardTheme(
    //     elevation: 0,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    //     surfaceTintColor: Colors.white,
    //     margin: EdgeInsets.symmetric(vertical: 1)),
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
