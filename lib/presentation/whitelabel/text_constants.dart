import 'package:flutter/material.dart';

const double _fontSizeDisplayLarge = 26.0;
const double _fontSizeheadlineLarge = 24.0;
const double _fontSizeDisplaySmall = 22.0;
const double _fontSizeHeadlineMedium = 20.0;
const double _fontSizeHeadlineSmall = 18.0;
const double _fontSizeTitleLarge = 16.0;
const double _fontSizeTitleMedium = 14.0;
const double _fontSizeTitleSmall = 12.0;
const double _fontSizeBodyLarge = 14.0;
const double _fontSizeBodyMedium = 12.0;
const double _fontSizeLabelLarge = 14.0;
const double _fontSizeBodySmall = 12.0;
const double _fontSizeLabelSmall = 10.0;

TextStyle displayLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeDisplayLarge,
      fontWeight: FontWeight.bold,
      color: color,
    );

TextStyle headlineLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeheadlineLarge,
      fontWeight: FontWeight.w600,
      color: color,
    );

TextStyle displaySmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeDisplaySmall,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle headlineMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeHeadlineMedium,
      fontWeight: FontWeight.bold,
      color: color,
    );

TextStyle headlineSmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeHeadlineSmall,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle titleLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeTitleLarge,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle titleMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeTitleMedium,
      fontWeight: FontWeight.normal,
      color: color,
    );

TextStyle titleSmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeTitleSmall,
      fontWeight: FontWeight.normal,
      color: color,
    );

TextStyle bodyLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeBodyLarge,
      fontWeight: FontWeight.normal,
      color: color,
    );

TextStyle bodyMediumTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeBodyMedium,
      fontWeight: FontWeight.normal,
      color: color,
    );

TextStyle labelLargeTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeLabelLarge,
      fontWeight: FontWeight.w500,
      color: color,
    );

TextStyle bodySmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeBodySmall,
      fontWeight: FontWeight.normal,
      color: color,
    );

TextStyle labelSmallTextStyle(Color color) => TextStyle(
      fontSize: _fontSizeLabelSmall,
      fontWeight: FontWeight.normal,
      color: color,
    );
