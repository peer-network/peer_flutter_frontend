import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class NotificationCircle extends StatefulWidget {
  final int notificationCount;

  const NotificationCircle({Key? key, required this.notificationCount})
      : super(key: key);

  @override
  _NotificationCircleState createState() => _NotificationCircleState();
}

class _NotificationCircleState extends State<NotificationCircle> {
  @override
  Widget build(BuildContext context) {
    // Determine the text to display based on the notificationCount
    final String displayText = widget.notificationCount > 99
        ? "99+" // Currently not working becuase of the fixed size of the container
        : widget.notificationCount.toString();

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
      width:
          AppDimensions.notificationIndicator, // Keep the circle size constant
      height: AppDimensions.notificationIndicator,
      decoration: const BoxDecoration(
        color: CustomColors.primaryColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        displayText,
        style: TextStyle(
          color: CustomColors.lightTextColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize, // Use the dynamically determined font size
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
