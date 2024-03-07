// button_component.dart

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
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
    this.width,
    this.height,
    this.isDisabled = false,
    this.isLoading = false,
    this.isFilled = true,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? AppDimensions.buttonHeightLarge,
      child: ElevatedButton(
        onPressed: isDisabled || isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor ??
              Theme.of(context).textTheme.labelLarge?.color ??
              CustomColors.primaryTextColor,
          backgroundColor: isFilled
              ? backgroundColor ?? Theme.of(context).primaryColor
              : Colors.transparent,
          side: isFilled
              ? null
              : const BorderSide(
                  color: CustomColors.activeBorderColor, width: 1),
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
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      CustomColors.primaryTextColor),
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  color: isFilled
                      ? CustomColors.lightTextColor
                      : isDisabled
                          ? CustomColors.disabledTextColor
                          : textColor ??
                              Theme.of(context).textTheme.labelLarge?.color ??
                              CustomColors.primaryTextColor,
                ),
              ),
      ),
    );
  }
}
