import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_tile.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';
import 'package:intl/intl.dart';

class ChatsCardComponent extends StatelessWidget {
  const ChatsCardComponent({super.key, required this.chats});

  final ChatMessagesModel chats;

  @override
  Widget build(BuildContext context) {
    return ChatTile(
      child: Column(
        children: [
          ChatsHeaderComponent(
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

class ChatsHeaderComponent extends StatelessWidget {
  const ChatsHeaderComponent(
      {super.key,
      required this.user,
      required this.lastMessage,
      this.notificationCount,
      this.lastMessageTime});

  final UserModel user;
  final String lastMessage;
  final int? notificationCount;
  final DateTime? lastMessageTime;

  @override
  Widget build(BuildContext context) {
    // if notificationCount is null, display an epmty text widget instead
    Widget theCircle = (notificationCount == 0
        ? const Text("")
        : NotificationCircle(notificationCount: notificationCount!));

    // if lastMessageTime is null, display an empty text widget instead, otherwise display the formatted time
    Widget lastMessageTimeWidget = lastMessageTime == null
        ? const Text("")
        : FormattedDateWidget(
            dateTime: lastMessageTime!,
            style: const TextStyle(color: CustomColors.secondaryTextColor));

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display the user avatar (profile image)
          AvatarComponent(imageUrl: user.profileImageUrl),
          Padding(
            padding: const EdgeInsets.fromLTRB(AppPaddings.small, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // Display the user name
                  user.username,
                  style: titleLargeTextStyle(CustomColors.primaryTextColor),
                ),
                // text output of last message, truncated to 20 characters
                Text(
                  lastMessage.length > 20
                      ? '${lastMessage.substring(0, 20)}...'
                      : lastMessage,
                  style:
                      const TextStyle(color: CustomColors.secondaryTextColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: AppPaddings.medium),
                child:
                    lastMessageTimeWidget, // Custom widget to display the formatted date
              ),
              theCircle, // Custom widget to display the notification count
            ],
          ),
        ],
      ),
    );
  }
}

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
