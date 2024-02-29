import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class NotificationCircle extends StatelessWidget {
  const NotificationCircle({
    super.key,
    required this.notificationCount,
  });
  final int notificationCount;

  @override
  Widget build(BuildContext context) {
    // Determine the text to display based on the notificationCount
    final String displayText = notificationCount > 99
        ? "99+" // Currently not working becuase of the fixed size of the container
        : notificationCount.toString();

    // Determine the font size based on the length of displayText
    final double fontSize;
    if (displayText.length > 2) {
      fontSize = 9.0; // For text length greater than 2 (e.g., "99+")
    } else if (displayText.length > 1) {
      fontSize = 12.0; // For text length greater than 1 (e.g., "10" to "99")
    } else {
      fontSize = 14.0; // For text length of 1 (e.g., "0" to "9")
    }

    return Container(
      width: AppDimensions
          .notificationIndicatorCicleSize, // Keep the circle size constant
      height: AppDimensions.notificationIndicatorCicleSize,
      decoration: const BoxDecoration(
        color: CustomColors.primaryColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        displayText,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: CustomColors.lightTextColor,
              fontSize: fontSize,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
