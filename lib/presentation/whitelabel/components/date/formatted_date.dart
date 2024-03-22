// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class FormattedWrittenOutDateTextWidget extends StatelessWidget {
//   final DateTime dateTime;
//   final TextStyle? style; // Optional TextStyle parameter

//   const FormattedWrittenOutDateTextWidget({
//     Key? key,
//     required this.dateTime,
//     this.style, // Initialize the optional style parameter
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     DateTime now = DateTime.now();
//     DateTime today = DateTime(now.year, now.month, now.day);
//     DateTime aWeekAgo = today.subtract(const Duration(days: 7));
//     DateTime startOfThisYear = DateTime(now.year);
//     String formattedDate;

//     if (dateTime.isAfter(aWeekAgo)) {
//       // If the message is less than a week ago, format as "Friday, 23:56"
//       formattedDate = DateFormat('EEEE').format(dateTime);
//     } else if (dateTime.isAfter(startOfThisYear)) {
//       // If it's longer than a week ago, but it's still within the same year, format as "March, 11"
//       formattedDate = DateFormat('MMMM, dd').format(dateTime);
//     } else {
//       // If the message was delivered last year or an earlier year, format as "April 20, 2022"
//       formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
//     }

//     // Use the provided style if available, otherwise default to the bodyLarge style of the current theme
//     return Text(formattedDate,
//         style: style ?? Theme.of(context).textTheme.bodyLarge);
//   }
// }

// import 'package:intl/intl.dart';

// class FormattedDate {
//   final DateTime dateTime;

//   FormattedDate(String timestamp) : dateTime = DateTime.parse(timestamp);

//   String getFormattedDate() {
//     DateTime now = DateTime.now();
//     DateTime today = DateTime(now.year, now.month, now.day);
//     DateTime aWeekAgo = today.subtract(Duration(days: 7));
//     DateTime startOfThisYear = DateTime(now.year);
//     String formattedDate;

//     if (dateTime.isAfter(aWeekAgo)) {
//       // If the date is less than a week ago, format as "Friday, 23:56"
//       formattedDate = DateFormat('EEEE, HH:mm').format(dateTime);
//     } else if (dateTime.isAfter(startOfThisYear)) {
//       // If it's longer than a week ago, but it's still within the same year, format as "March, 11"
//       formattedDate = DateFormat('MMMM, dd').format(dateTime);
//     } else {
//       // If the date was last year or an earlier year, format as "April 20, 2022"
//       formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
//     }

//     return formattedDate;
//   }
// }

import 'package:intl/intl.dart';

class FormattedDate {
  final DateTime dateTime;

  FormattedDate(String timestamp) : dateTime = DateTime.parse(timestamp);

  String getFormattedDate({String formatType = 'letters'}) {
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day);
    DateTime aWeekAgo = today.subtract(Duration(days: 7));
    DateTime startOfThisYear = DateTime(now.year);
    String formattedDate;

    switch (formatType) {
      case 'letters':
        if (dateTime.isAfter(aWeekAgo)) {
          // If the date is less than a week ago, format as "Friday, 23:56"
          formattedDate = DateFormat('EEEE, HH:mm').format(dateTime);
        } else if (dateTime.isAfter(startOfThisYear)) {
          // If it's longer than a week ago, but it's still within the same year, format as "March, 11"
          formattedDate = DateFormat('MMMM, dd').format(dateTime);
        } else {
          // If the date was last year or an earlier year, format as "April 20, 2022"
          formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
        }
        break;
      case 'no-time':
        if (dateTime.isAfter(aWeekAgo)) {
          // If the date is less than a week ago, format as "Friday"
          formattedDate = DateFormat('EEEE').format(dateTime);
        } else if (dateTime.isAfter(startOfThisYear)) {
          // If it's longer than a week ago, but it's still within the same year, format as "March, 11"
          formattedDate = DateFormat('MMMM, dd').format(dateTime);
        } else {
          // If the date was last year or an earlier year, format as "April 20, 2022"
          formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
        }
        break;
      case 'only-time':
        if (dateTime.isAfter(aWeekAgo)) {
          // If the date is less than a week ago, format as "23:56"
          formattedDate = DateFormat('HH:mm').format(dateTime);
        } else if (dateTime.isAfter(startOfThisYear)) {
          // If it's longer than a week ago, but it's still within the same year, format as "23:56"
          formattedDate = DateFormat('HH:mm').format(dateTime);
        } else {
          // If the date was last year or an earlier year, format as "23:56"
          formattedDate = DateFormat('HH:mm').format(dateTime);
        }
        break;
      case 'numbers':
      default:
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
        break;
    }

    return formattedDate;
  }
}
