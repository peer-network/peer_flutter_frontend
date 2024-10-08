import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class BaseInputDecoration {
  static InputDecoration get({
    required String hintText,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.fromLTRB(
        AppPaddings.medium,
        AppPaddings.tiny,
        AppPaddings.small,
        AppPaddings.tiny,
      ),
      border: OutlineInputBorder(
        borderRadius: AppBorders.defaultRadius,
        borderSide: BorderSide(
            color: LightColors
                .activeBorder), //TODO: no access to context -> not theme
      ),
      suffixIcon: suffixIcon, // Allows for optional customization
    );
  }
}
// 