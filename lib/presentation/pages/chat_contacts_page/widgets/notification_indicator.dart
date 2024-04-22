import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class NotificationIndicator extends StatelessWidget {
  final int notificationCount;

  const NotificationIndicator({
    Key? key,
    required this.notificationCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.notificationIndicator, // Adjust size as needed
      height: AppDimensions.notificationIndicator, // Adjust size as needed
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor, // Notification circle color
        shape: BoxShape.circle, // Makes the container circular
      ),
      child: Center(
        child: Text(
          notificationCount.toString(),
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary, // Text color
            fontSize: 12, // Adjust text size as needed
            fontWeight: FontWeight.bold, // Makes the text bold
          ),
        ),
      ),
    );
  }
}
