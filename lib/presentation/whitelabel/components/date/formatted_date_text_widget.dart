import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormattedDateTextWidget extends StatelessWidget {
  final DateTime dateTime;
  final TextStyle? style; // Optional TextStyle parameter

  const FormattedDateTextWidget({
    Key? key,
    required this.dateTime,
    this.style, // Initialize the optional style parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    DateTime aWeekAgo = today.subtract(const Duration(days: 7));
    DateTime startOfThisYear = DateTime(now.year);
    String formattedDate;

    if (dateTime.isAfter(aWeekAgo)) {
      // If the message is less than a week ago, format as "Friday, 23:56"
      formattedDate = DateFormat('EE, HH:mm').format(dateTime);
    } else if (dateTime.isAfter(startOfThisYear)) {
      // If it's longer than a week ago, but it's still within the same year, format as "March, 11"
      formattedDate = DateFormat('MM, dd').format(dateTime);
    } else {
      // If the message was delivered last year or an earlier year, format as "April 20, 2022"
      formattedDate = DateFormat('MM dd, yyyy').format(dateTime);
    }

    // Use the provided style if available, otherwise default to the bodyLarge style of the current theme
    return Text(formattedDate,
        style: style ?? Theme.of(context).textTheme.bodyLarge);
  }
}

class TimePassedSinceTextWidget extends StatelessWidget {
  final DateTime dateTime;
  final TextStyle? style;

  const TimePassedSinceTextWidget(
      {Key? key, required this.dateTime, this.style})
      : super(key: key);

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