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
        : Text(
            '${lastMessageTime!.month}.${lastMessageTime!.day}, ${lastMessageTime!.hour}:${lastMessageTime!.minute.toString().padLeft(2, '0')}', // Using string interpolation
            style: const TextStyle(color: CustomColors.secondaryTextColor),
          );

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          // Display the user avatar (profile image)
          AvatarComponent(imageUrl: user.profileImageUrl),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPaddings.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
              // Text Widget that displays the time of the last message
              lastMessageTimeWidget,
              theCircle, // Widget to display the notification count
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
    return Container(
      width: AppDimensions.notificationIndicator,
      height: AppDimensions.notificationIndicator,
      decoration: const BoxDecoration(
        color: CustomColors.primaryColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '${widget.notificationCount}', // Access the notificationCount from above using the widget property
          style: const TextStyle(
            color: CustomColors.lightTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class LikeCountComponent extends StatelessWidget {
  const LikeCountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.heart,
        ),
        const SizedBox(width: AppPaddings.small),
        Text("12", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
