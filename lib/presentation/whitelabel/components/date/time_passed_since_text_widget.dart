import 'package:flutter/material.dart';

class TimePassedSinceTextWidget extends StatelessWidget {
  final DateTime dateTime;
  final TextStyle? style;

  const TimePassedSinceTextWidget(
      {super.key, required this.dateTime, this.style});

  String _formatDuration(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays >= 1) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else {
      return 'Just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatDuration(dateTime),
      style: style ?? Theme.of(context).textTheme.bodySmall,
    );
  }
}
