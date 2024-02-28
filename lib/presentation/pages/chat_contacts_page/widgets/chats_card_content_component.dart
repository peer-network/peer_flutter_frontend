import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chats_card_component.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/notification_circle.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class ChatsCardContentComponent extends StatelessWidget {
  const ChatsCardContentComponent(
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
            padding: const EdgeInsets.only(left: AppPaddings.small),
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
