import 'package:flutter/material.dart';

// Display
const double _fontSizeDisplayLarge = 26.0;
const double _fontSizeDisplayMedium = 24.0;
const double _fontSizeDisplaySmall = 22.0;

// Headline
const double _fontSizeHeadlineLarge = 22.0;
const double _fontSizeHeadlineMedium = 20.0;
const double _fontSizeHeadlineSmall = 18.0;

// Title
const double _fontSizeTitleLarge = 16.0;
const double _fontSizeTitleMedium = 14.0;
const double _fontSizeTitleSmall = 12.0;

// Body
const double _fontSizeBodyLarge = 14.0;
const double _fontSizeBodyMedium = 12.0;
const double _fontSizeBodySmall = 10.0;

// Label
const double _fontSizeLabelLarge = 12.0;
const double _fontSizeLabelMedium = 10.0;
const double _fontSizeLabelSmall = 8.0;

// Display
TextStyle displayLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeDisplayLarge,
      fontWeight: FontWeight.bold,
      color: color,
    );

TextStyle displayMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeDisplayMedium,
      fontWeight: FontWeight.bold,
      color: color,
    );

TextStyle displaySmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeDisplaySmall,
      fontWeight: FontWeight.bold,
      color: color,
    );

// Headline
TextStyle headlineLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeHeadlineLarge,
      fontWeight: FontWeight.w700,
      color: color,
    );

TextStyle headlineMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeHeadlineMedium,
      fontWeight: FontWeight.w700,
      color: color,
    );

TextStyle headlineSmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeHeadlineSmall,
      fontWeight: FontWeight.w700,
      color: color,
    );

// Title
TextStyle titleLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeTitleLarge,
      fontWeight: FontWeight.w700,
      color: color,
    );

TextStyle titleMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeTitleMedium,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle titleSmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeTitleSmall,
      fontWeight: FontWeight.w600,
      color: color,
    );

// Body
TextStyle bodyLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeBodyLarge,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle bodyMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeBodyMedium,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle bodySmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeBodySmall,
      fontWeight: FontWeight.w500,
      color: color,
    );

// Label
TextStyle labelLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeLabelLarge,
      fontWeight: FontWeight.w400,
      color: color,
    );

TextStyle labelMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeLabelMedium,
      fontWeight: FontWeight.w400,
      color: color,
    );

TextStyle labelSmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeLabelSmall,
      fontWeight: FontWeight.w400,
      color: color,
    );
