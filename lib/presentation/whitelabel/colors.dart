import 'package:flutter/material.dart';

// Colors
const Color _blackIsh = Color(0xFF00070F);
const Color _whiteIsh = Color(0xFFFFFAFA);
const Color _whiteIshGrey = Color(0xFFC1D0FF);
const Color _lightestGrey = Color(0xFFE2E2E2);
const Color _lightGrey = Color(0xFFBABABA);
const Color _grey = Color(0xFF707070);
const Color _darkGrey = Color(0xFF3B3B3B);
const Color _darkestGrey = Color(0xFF252525);
const Color _primaryLightBlue = Color(0xFF75DDDD);
const Color _primaryBlue = Color(0xFF127EFC);
const Color _primaryDarkBlue = Color(0xFF0B4D99);
const Color _primaryDarkestBlue = Color(0xFF041A33);
const Color _greyIshBlue = Color(0xFFB8D8D8);
const Color _lightRed = Color(0xFFD01C2A);
const Color _red = Color(0xFFA31621);
const Color _green = Color(0xFF87A330);
const Color _btcOrange = Color(0xFFF7931A);
const Color _paypalYellow = Color(0xFFFCBB32);
const Color _paypalLightBlue = Color(0xFF009EE3);
const Color _paypalMixedBlue = Color(0xFF113984);
const Color _paypalDarkBlue = Color(0xFF172C70);

class LightColors {
  // text Colors
  static const Color textDark = _blackIsh;
  static const Color textBright = _whiteIsh;
  static const Color textPrimary = _blackIsh; // changes between themes
  static const Color textCompany = _primaryBlue;
  static const Color textError = _red;
  static const Color textSuccess = _green;
  static const Color textBrightSubtle = _lightGrey;
  static const Color textInactiv = _grey; // changes between themes
  static const Color textDarkSubtle = _darkGrey;

  // background colors
  static const Color ownChatBubble = _greyIshBlue;
  static const Color theirChatBubble = _whiteIshGrey;
  static const Color followBackground = _primaryLightBlue;
  static const Color unfollowBackground = _greyIshBlue;
  static const Color backgroundContainer = _whiteIsh; // changes between themes
  static const Color backgroundScreen = _whiteIsh; // changes between themes

  // Border Colors
  static const Color activeBorder = _primaryBlue;
  static const Color borderDisabled = _grey;
  static const Color errorBorder = _red;
  static const Color successBorder = _green;

  // icon colors
  static const Color iconBright = _whiteIsh;
  static const Color iconDarkPrimary = _blackIsh; // changes between themes
  static const Color iconBrightPrimary = _whiteIsh; // changes between themes
  static const Color iconCompany = _primaryBlue;
  static const Color iconError = _red;
  static const Color iconSuccess = _green;
  static const Color iconInactiv = _grey;
  static const Color iconBtc = _btcOrange;

  // bar handle colors
  static const Color barHandle = _lightGrey;
  static const Color barSlider = _lightestGrey; // changes between themes

  // paypal colors
  static const Color paypalLight = _paypalLightBlue;
  static const Color paypalMixed = _paypalMixedBlue;
  static const Color paypalDark = _paypalDarkBlue;
  static const Color paypalBackground = _paypalYellow;

  // divider
  static const Color divider = _lightGrey;

  // fade colors
  static const Color fadeDark = _primaryDarkBlue; // changes between themes
  static const Color fadeBright = _primaryBlue; // changes between themes

  // curcular notification indicator
  static const Color notificationIndicator = _primaryBlue;
}

class DarkColors {
  // text Colors
  static const Color textDark = _blackIsh;
  static const Color textBright = _whiteIsh;
  static const Color textPrimary = _whiteIsh; // changes text between themes
  static const Color textCompany = _primaryBlue;
  static const Color textError = _lightRed;
  static const Color textSuccess = _green;
  static const Color textBrightSubtle = _lightGrey;
  static const Color textInactiv = _lightGrey; // changes between themes
  static const Color textDarkSubtle = _darkGrey;

  // background colors
  static const Color ownChatBubble = _greyIshBlue;
  static const Color theirChatBubble = _whiteIshGrey;
  static const Color followBackground = _primaryLightBlue;
  static const Color unfollowBackground = _greyIshBlue;
  static const Color backgroundContainer = _darkGrey; // changes between themes
  static const Color backgroundScreen = _darkestGrey; // changes between themes

  // Border Colors
  static const Color activeBorder = _primaryBlue;
  static const Color borderDisabled = _grey;
  static const Color errorBorder = _red;
  static const Color successBorder = _green;

  // icon colors
  static const Color iconBright = _whiteIsh;
  static const Color iconDarkPrimary = _whiteIsh; // changes text between themes
  static const Color iconBrightPrimary =
      _blackIsh; // changes text between themes
  static const Color iconCompany = _primaryBlue;
  static const Color iconError = _red;
  static const Color iconSuccess = _green;
  static const Color iconInactiv = _grey;
  static const Color iconBtc = _btcOrange;

  // bar handle colors
  static const Color barHandle = _lightGrey;
  static const Color barSlider = _grey; // changes between themes

  // paypal colors
  static const Color paypalLight = _paypalLightBlue;
  static const Color paypalMixed = _paypalMixedBlue;
  static const Color paypalDark = _paypalDarkBlue;
  static const Color paypalBackground = _paypalYellow;

  // divider
  static const Color divider = _lightGrey;

  // fade colors
  static const Color fadeDark = _primaryDarkestBlue; // changes between themes
  static const Color fadeBright = _primaryDarkBlue; // changes between themes

  // curcular notification indicator
  static const Color notificationIndicator = _primaryBlue;
}

/* light theme


divider color                = divider
default texttheme color      = textPrimary (hier schwarz)

inputDecorationTheme:
  outline input border -> color = active border
    -> fill color           =  background container (hier whiteish)
    -> error border color   =  error 

primary icon theme:
  -> color                 = iconDarkPrimary (hier schwarz)

icon theme:
  -> color                = iconCompany (hier blau)

appbar:
  -> background color       = background container (hier whiteish)
  -> icon theme color (in appbar) = iconDarkPrimary (hier schwarz)

generic color scheme:
  -> primary                = 
  -> secondary
  -> tertiary
  -> surface
  -> onError
  -> background
  -> primaryContainer

disabled color

card theme
  -> color
  -> shadow color

indicator color

bottomNavigationBarTheme
bottomSheetTheme

dialogtheme

dropdownMenuTheme
*/