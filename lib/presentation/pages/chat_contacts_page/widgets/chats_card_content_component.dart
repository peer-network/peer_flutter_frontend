import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/notification_circle.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class ChatsCardContentComponent extends StatelessWidget {
  const ChatsCardContentComponent({
    super.key,
    required this.chat,
  });

  final ChatMessagesModel chat;

  @override
  Widget build(BuildContext context) {
    // if notificationCount is null, display an epmty text widget instead
    Widget notificationCircle =
        (chat.notificationCount == 0 || chat.notificationCount == null
            ? const Text("")
            : NotificationCircle(notificationCount: chat.notificationCount!));

    // if lastMessageTime is null, display an empty text widget instead, otherwise display the formatted time
    Widget lastMessageTimeWidget = chat.lastMessageTime == null
        ? const Text("")
        : FormattedDateTextWidget(
            dateTime: chat.lastMessageTime!,
            style: const TextStyle(color: CustomColors.secondaryTextColor));

    // if username is longer than 15 characters, display the first 15 characters followed by '...', otherwise display the username
    Widget displayedUsername = chat.contact.username.length > 15
        ? Text(
            '${chat.contact.username.substring(0, 15)}...',
            style: titleLargeTextStyle(CustomColors.primaryTextColor),
          )
        : Text(
            chat.contact.username,
            style: titleLargeTextStyle(CustomColors.primaryTextColor),
          );

    // if lastMessage is null, display an empty text widget
    // else if the last message is longer than 20 characters, display the first 20 characters followed by '...'
    // else display the last message
    displayLastMessage() {
      if (chat.lastMessage == null) {
        return const Text("");
      } else if (chat.lastMessage!.length > 20) {
        return Text(
          '${chat.lastMessage!.substring(0, 20)}...',
          style: const TextStyle(color: CustomColors.secondaryTextColor),
        );
      } else {
        return Text(
          chat.lastMessage!,
          style: const TextStyle(color: CustomColors.secondaryTextColor),
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display the user avatar (profile image)
          AvatarComponent(imageUrl: chat.contact.profileImageUrl),
          Padding(
            padding: const EdgeInsets.only(left: AppPaddings.small),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                displayedUsername, // Custom widget to display the username
                displayLastMessage(), // Custom method to display the last message
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
              notificationCircle, // Custom widget to display the notification count
            ],
          ),
        ],
      ),
    );
  }
}
