// button_component.dart

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle? textStyle;
  final bool isDisabled;
  final bool isLoading;
  final bool isFilled;
  final double? height;
  final double? width;

  const BaseButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.textStyle,
    this.width,
    this.height,
    this.isDisabled = false,
    this.isLoading = false,
    this.isFilled = true,
  }) : super();

  @override
  Widget build(BuildContext context) {
    TextStyle finalTextStyle = textStyle ?? const TextStyle();
    if (textColor != null) {
      // Ensure textColor has precedence by merging it into textStyle
      finalTextStyle = finalTextStyle.copyWith(color: textColor);
    } else if (textStyle?.color == null) {
      // Apply default color if neither textColor nor textStyle.color is provided
      finalTextStyle = finalTextStyle.copyWith(
          color: Theme.of(context).textTheme.labelLarge!.color);
    }

    return SizedBox(
      width: width,
      height: height ?? AppDimensions.buttonHeightLarge,
      child: ElevatedButton(
        onPressed: isDisabled || isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isFilled
              ? backgroundColor ?? Theme.of(context).primaryColor
              : Theme.of(context).colorScheme.primaryContainer,
          side: isFilled
              ? null
              : BorderSide(
                  color: Theme.of(context)
                      .inputDecorationTheme
                      .outlineBorder!
                      .color,
                  width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: AppBorders.defaultRadius,
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: AppPaddings.large, vertical: 0.0),
        ),
        child: isLoading
            ? SizedBox(
                height: (height ?? AppDimensions.buttonHeightLarge) / 2,
                width: (height ?? AppDimensions.buttonHeightLarge) / 2,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.tertiary),
                ),
              )
            : Text(
                text,
                style: finalTextStyle,
              ),
      ),
    );
  }
}
