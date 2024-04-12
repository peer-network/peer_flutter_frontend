import 'package:flutter/material.dart';

// Colors
const Color _blueColor = Color(0xFF004CFF);
const Color _lightGreyColor = Color(0xFFB3B3B3);
const Color _lightestGreyColor = Color.fromARGB(255, 226, 226, 226);
const Color _black = Color(0xFF000000);
const Color _grey = Color(0xFF707070);
const Color _white = Color(0xFFFFFFFF);
const Color _red = Color(0xFFAD3B3B);
const Color _green = Color(0xFF00FF00);
const Color _bitcoinColor = Color(0xFFF7931A);
const Color _payPalColor = Color(0xFF009EE3);

// Color aliases
class CustomColors {
  // Text Colors
  static const Color primaryTextColor = _black;
  static const Color secondaryTextColor = _grey;
  static const Color tertiaryTextColor = _blueColor;
  static const Color lightTextColor = _white;
  static const Color disabledTextColor = _lightGreyColor;
  static const Color errorTextColor = _red;

  // Border Colors
  static const Color activeBorderColor = _black;
  static const Color inactiveBorderColor = _lightGreyColor;
  static const Color errorBorderColor = _red;
  static const Color successBorderColor = _green;

  // Unassigned Colors
  static const Color primaryColor = _blueColor;
  static const Color primaryIconColor = _black;
  static const Color backgroundColor = _white;
  static const Color backgroundCardColor = _white;
  static const Color cardBorderColor = _lightGreyColor;
  static const Color secondaryBackgroundColor = _lightestGreyColor;
  static const Color bitcoinColor = _bitcoinColor;
  static const Color payPalColor = _payPalColor;

  static const Color secondaryButtonColor = _lightGreyColor;
}
