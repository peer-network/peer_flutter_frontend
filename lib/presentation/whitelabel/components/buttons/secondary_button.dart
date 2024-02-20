// secondary_button.dart

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart'; // Adjust the import path
import 'package:peer_app/presentation/whitelabel/components/buttons/base_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SecondaryButton extends BaseButton {
  const SecondaryButton({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color? textColor,
    bool isDisabled = false,
    bool isLoading = false,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: CustomColors
              .secondaryButtonColor, // Specify your secondary color here
          textColor: textColor,
          isDisabled: isDisabled,
          isLoading: isLoading,
          height: AppDimensions.buttonHeightSmall,
          isFilled: true, // Always filled for secondary button
        );
}
