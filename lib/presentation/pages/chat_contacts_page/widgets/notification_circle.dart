import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

// newMessageCountComponent
class NewMessageCountComonent extends StatelessWidget {
  const NewMessageCountComonent({
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
      // For text length greater than 2 (e.g., "99+")
      fontSize = Theme.of(context).textTheme.bodySmall!.fontSize!;
    } else if (displayText.length > 1) {
      // For text length greater than 1 (e.g., "10" to "99")
      fontSize = Theme.of(context).textTheme.bodyMedium!.fontSize!;
    } else {
      // For text length of 1 (e.g., "0" to "9")
      fontSize = Theme.of(context).textTheme.bodyLarge!.fontSize!;
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
