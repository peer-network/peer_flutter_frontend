import 'package:flutter/material.dart';

// Colors
const Color _blueColor = Color(0xFF004CFF);
const Color _lightGreyColor = Color(0xFFB3B3B3);
const Color _black = Color(0xFF000000);
const Color _grey = Color(0xFF707070);
const Color _white = Color(0xFFFFFFFF);
const Color _red = Color(0xFFAD3B3B);

// Color aliases
class CustomColors {
  static const Color primaryColor = _blueColor;
  static const Color inactiveBorderColor = _lightGreyColor;
  static const Color activeBorderColor = _black;
  static const Color errorBorderColor = _red;
  static const Color errorTextColor = _red;
  static const Color lightTextColor = _white;
  static const Color disabledTextColor = _lightGreyColor;
  static const Color secondaryTextColor = _grey;

  static const Color primaryTextColor = _black;
  static const Color backgroundColor = _white;
}
