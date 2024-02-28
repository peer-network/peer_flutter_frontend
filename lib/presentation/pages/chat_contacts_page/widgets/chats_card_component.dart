import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_tile.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chats_card_content_component.dart';
import 'package:intl/intl.dart';

class ChatsCardComponent extends StatelessWidget {
  const ChatsCardComponent({super.key, required this.chats});

  final ChatMessagesModel chats;

  @override
  Widget build(BuildContext context) {
    return ChatTile(
      child: Column(
        children: [
          ChatsCardContentComponent(
            user: chats.contact,
            lastMessage: chats.lastMessage!,
            notificationCount: chats.notificationCount,
            lastMessageTime: chats.lastMessageTime,
          ), // Avatar, username, follow button + Last message + notification count + last message time
        ],
      ),
    );
  }
}

// Which folder should i put this class in?
class FormattedDateWidget extends StatelessWidget {
  final DateTime dateTime;
  final TextStyle? style; // Optional TextStyle parameter

  const FormattedDateWidget({
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
      formattedDate = DateFormat('EEEE, HH:mm').format(dateTime);
    } else if (dateTime.isAfter(startOfThisYear)) {
      // If it's longer than a week ago, but it's still within the same year, format as "March, 11"
      formattedDate = DateFormat('MMMM, dd').format(dateTime);
    } else {
      // If the message was delivered last year or an earlier year, format as "April 20, 2022"
      formattedDate = DateFormat('MMMM dd, yyyy').format(dateTime);
    }

    // Use the provided style if available, otherwise default to the bodyLarge style of the current theme
    return Text(formattedDate,
        style: style ?? Theme.of(context).textTheme.bodyLarge);
  }
}
