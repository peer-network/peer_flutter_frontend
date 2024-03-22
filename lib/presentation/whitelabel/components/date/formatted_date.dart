import 'package:intl/intl.dart';

// Define an enum for the format types
enum DateFormatType { letters, noTime, onlyTime, numbers }

class FormattedDate {
  final DateTime dateTime;

  FormattedDate(String timestamp) : dateTime = DateTime.parse(timestamp);

  // Update the method signature to accept the enum
  String getFormattedDate(
      {DateFormatType formatType = DateFormatType.letters}) {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    DateTime aWeekAgo = today.subtract(Duration(days: 7));
    DateTime startOfThisYear = DateTime(now.year);
    String formattedDate;

    switch (formatType) {
      case DateFormatType.letters:
        if (dateTime.isAfter(aWeekAgo)) {
          formattedDate = DateFormat('EEEE, HH:mm').format(dateTime);
        } else if (dateTime.isAfter(startOfThisYear)) {
          formattedDate = DateFormat('MMMM, dd').format(dateTime);
        } else {
          formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
        }
        break;
      case DateFormatType.noTime:
        if (dateTime.isAfter(aWeekAgo)) {
          formattedDate = DateFormat('EEEE').format(dateTime);
        } else if (dateTime.isAfter(startOfThisYear)) {
          formattedDate = DateFormat('MMMM, dd').format(dateTime);
        } else {
          formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
        }
        break;
      case DateFormatType.onlyTime:
        // Since the time format does not change based on the date,
        // directly return the time format without checking the date.
        formattedDate = DateFormat('HH:mm').format(dateTime);
        break;
      case DateFormatType.numbers:
      default:
        if (dateTime.isAfter(aWeekAgo)) {
          formattedDate = DateFormat('EE, HH:mm').format(dateTime);
        } else if (dateTime.isAfter(startOfThisYear)) {
          formattedDate = DateFormat('MM, dd').format(dateTime);
        } else {
          formattedDate = DateFormat('MM dd, yyyy').format(dateTime);
        }
        break;
    }

    return formattedDate;
  }
}
