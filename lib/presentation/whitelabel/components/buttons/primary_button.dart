import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';

class PrimaryButton extends BaseButton {
  const PrimaryButton({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color? backgroundColor,
    Color? textColor,
    TextStyle? textStyle,
    double? height,
    bool isDisabled = false,
    bool isLoading = false,
    bool isFilled = true,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          textStyle: textStyle,
          isDisabled: isDisabled,
          isLoading: isLoading,
          isFilled: isFilled,
          height: height,
        );
}
