import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.light(
            outline: LightColors.activeBorder,
            outlineVariant: LightColors.borderDisabled)),
    dividerColor: LightColors.divider,
    textTheme: TextTheme(
      displayLarge: displayLargeTextStyle(LightColors.textPrimary),
      displayMedium: displayMediumTextStyle(LightColors.textPrimary),
      displaySmall: displaySmallTextStyle(LightColors.textPrimary),
      headlineMedium: headlineMediumTextStyle(LightColors.textPrimary),
      headlineSmall: headlineSmallTextStyle(LightColors.textPrimary),
      titleLarge: titleLargeTextStyle(LightColors.textPrimary),
      titleMedium: titleMediumTextStyle(LightColors.textPrimary),
      titleSmall: titleSmallTextStyle(LightColors.textPrimary),
      bodyLarge: bodyLargeTextStyle(LightColors.textPrimary),
      bodyMedium: bodyMediumTextStyle(LightColors.textPrimary),
      bodySmall: bodySmallTextStyle(LightColors.textPrimary),
      labelLarge: labelLargeTextStyle(LightColors.textPrimary),
      labelSmall: labelSmallTextStyle(LightColors.textPrimary),
    ),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: LightColors.textDark,
        selectionColor: LightColors.textDark,
        selectionHandleColor: LightColors.textDark),
    inputDecorationTheme: InputDecorationTheme(
        outlineBorder: const BorderSide(
          color: LightColors.activeBorder,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: LightColors.activeBorder),
            borderRadius: AppBorders.defaultRadius),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: LightColors.borderDisabled),
            borderRadius: AppBorders.defaultRadius),
        labelStyle: const TextStyle(color: LightColors.textInactiv),
        floatingLabelStyle: const TextStyle(color: LightColors.textCompany),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: LightColors.activeBorder),
            borderRadius: AppBorders.defaultRadius),
        fillColor: LightColors.backgroundContainer,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: LightColors.errorBorder),
            borderRadius: AppBorders.defaultRadius),
        errorStyle: labelSmallTextStyle(LightColors.textError)),
    primaryIconTheme: const IconThemeData(
        color: LightColors.iconDarkPrimary, size: AppDimensions.iconSizeLarge),
    iconTheme: const IconThemeData(
        color: LightColors.iconCompany, size: AppDimensions.iconSizeLarge),
    appBarTheme: const AppBarTheme(
      backgroundColor: LightColors.backgroundContainer,
      elevation: 0,
      iconTheme: IconThemeData(color: LightColors.iconDarkPrimary),
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: LightColors.textDark,
      secondary: LightColors.textBright,
      tertiary: LightColors.textCompany,
      onError: LightColors.textError,
      background: LightColors.backgroundScreen,
      primaryContainer: LightColors.backgroundContainer,
    ),
    disabledColor: LightColors.borderDisabled);

ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.dark(
            background: DarkColors.backgroundContainer,
            outline: DarkColors.activeBorder,
            outlineVariant: DarkColors.borderDisabled)),
    dividerColor: DarkColors.divider,
    textTheme: TextTheme(
      displayLarge: displayLargeTextStyle(DarkColors.textPrimary),
      displayMedium: displayMediumTextStyle(DarkColors.textPrimary),
      displaySmall: displaySmallTextStyle(DarkColors.textPrimary),
      headlineMedium: headlineMediumTextStyle(DarkColors.textPrimary),
      headlineSmall: headlineSmallTextStyle(DarkColors.textPrimary),
      titleLarge: titleLargeTextStyle(DarkColors.textPrimary),
      titleMedium: titleMediumTextStyle(DarkColors.textPrimary),
      titleSmall: titleSmallTextStyle(DarkColors.textPrimary),
      bodyLarge: bodyLargeTextStyle(DarkColors.textPrimary),
      bodyMedium: bodyMediumTextStyle(DarkColors.textPrimary),
      bodySmall: bodySmallTextStyle(DarkColors.textPrimary),
      labelLarge: labelLargeTextStyle(DarkColors.textPrimary),
      labelSmall: labelSmallTextStyle(DarkColors.textPrimary),
    ),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: DarkColors.textBright,
        selectionColor: DarkColors.textBright,
        selectionHandleColor: DarkColors.textBright),
    inputDecorationTheme: InputDecorationTheme(
        outlineBorder: const BorderSide(
          color: DarkColors.activeBorder,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: DarkColors.activeBorder),
            borderRadius: AppBorders.defaultRadius),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: DarkColors.borderDisabled),
            borderRadius: AppBorders.defaultRadius),
        labelStyle: const TextStyle(color: DarkColors.textInactiv),
        floatingLabelStyle: const TextStyle(color: DarkColors.textCompany),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: DarkColors.activeBorder),
            borderRadius: AppBorders.defaultRadius),
        fillColor: DarkColors.backgroundContainer,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: DarkColors.errorBorder),
            borderRadius: AppBorders.defaultRadius),
        errorStyle: labelSmallTextStyle(DarkColors.textError)),
    primaryIconTheme: const IconThemeData(
        color: DarkColors.iconDarkPrimary, size: AppDimensions.iconSizeLarge),
    iconTheme: const IconThemeData(
        color: DarkColors.iconCompany, size: AppDimensions.iconSizeLarge),
    appBarTheme: const AppBarTheme(
      backgroundColor: DarkColors.backgroundContainer,
      elevation: 0,
      iconTheme: IconThemeData(color: DarkColors.iconDarkPrimary),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: DarkColors.textDark,
      secondary: DarkColors.textBright,
      tertiary: DarkColors.textCompany,
      onError: DarkColors.textError,
      background: DarkColors.backgroundScreen,
      primaryContainer: DarkColors.backgroundContainer,
    ),
    disabledColor: DarkColors.borderDisabled);
