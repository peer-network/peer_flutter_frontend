import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_tile.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/components/tiles/feed_tile.dart';
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
          // FeedContentComponent(
          //   feed: feed,
          // ),
          // const FeedActionsComponent(),
          // const SizedBox(height: AppPaddings.small),
          // const FeedStatsWithCommentsComponent(), // Like, view, comment count
        ],
      ),
    );
  }
}

// class FeedActionsComponent extends StatelessWidget {
//   const FeedActionsComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//           horizontal: AppPaddings.large, vertical: AppPaddings.small),
//       child: Row(
//         children: [
//           CustomIconButton(
//             onPressed: () {},
//             sizeType: SizeType.medium,
//             icon: IconLibrary.heart,
//           ),
//           const SizedBox(width: AppPaddings.small),
//           CustomIconButton(
//             onPressed: () {},
//             sizeType: SizeType.medium,
//             icon: IconLibrary.comment,
//           ),
//           const SizedBox(width: AppPaddings.small),
//           CustomIconButton(
//             onPressed: () {},
//             sizeType: SizeType.medium,
//             icon: IconLibrary.share,
//           ),
//           const Spacer(),
//           Text("3. August", style: Theme.of(context).textTheme.bodySmall),
//         ],
//       ),
//     );
//   }
// }

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
          // const SizedBox(width: AppPaddings.small),
          // Display the user name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPaddings.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.username,
                  style: titleLargeTextStyle(CustomColors.primaryTextColor),
                ),
                // text output of last message, truncated to 20 characters
                Text(
                  lastMessage.length > 20
                      ? lastMessage.substring(0, 20) + "..."
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
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color:
            CustomColors.primaryColor, // Blue background color for the circle
        shape: BoxShape.circle, // Makes the container a circle
      ),
      child: Center(
        child: Text(
          '${widget.notificationCount}', // Access the notificationCount using widget.notificationCount
          style: const TextStyle(
            color: CustomColors.lightTextColor, // White text color
            fontWeight: FontWeight.bold, // Bold text
          ),
        ),
      ),
    );
  }
}

// class ChatsHeaderComponent extends StatelessWidget {
//   const ChatsHeaderComponent({super.key, required this.user});

//   final UserModel user;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//           horizontal: AppPaddings.large, vertical: AppPaddings.small),
//       child: Row(
//         children: [
//           // Display the user avatar (profile image)
//           AvatarComponent(imageUrl: user.profileImageUrl),
//           const SizedBox(width: AppPaddings.small),
//           // Display the user name
//           Text(user.username, style: Theme.of(context).textTheme.titleLarge!),
//           const Spacer(),
//           // Display the follow button
//           SecondaryButton(text: 'Follow', onPressed: () => print('Follow')),
//         ],
//       ),
//     );
//   }
// }

// class FeedContentComponent extends StatelessWidget {
//   const FeedContentComponent({super.key, required this.feed});
//   final FeedModel feed;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         feed.imageUrls.isNotEmpty
//             ? FeedContentImageWidget(
//                 imageUrls: feed.imageUrls,
//               )
//             : const SizedBox(),
//         feed.contentText != null
//             ? FeedContentTextWidget(text: feed.contentText!)
//             : const SizedBox(),
//       ],
//     );
//   }
// }

// class FeedContentImageWidget extends StatelessWidget {
//   final List<String> imageUrls;
//   const FeedContentImageWidget({super.key, required this.imageUrls});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.width, // Assuming square images
//       child: PageView.builder(
//         itemCount: imageUrls.length,
//         controller: PageController(
//             viewportFraction:
//                 1), // Adjust the viewportFraction for partially visible next image
//         itemBuilder: (context, index) {
//           return Image.network(imageUrls[index], fit: BoxFit.fitWidth);
//         },
//       ),
//     );
//   }
// }

class FeedStatsWithCommentsComponent extends StatelessWidget {
  const FeedStatsWithCommentsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          // Display the like count
          LikeCountComponent(),
          // SizedBox(width: AppPaddings.small),
          // Display the view count
          // ViewCountComponent(),
          // Spacer(),
          // Display the comment count
          // CommentCountComponent(),
        ],
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

// class ViewCountComponent extends StatelessWidget {
//   const ViewCountComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CustomIconButton(
//           onPressed: () {},
//           sizeType: SizeType.small,
//           icon: IconLibrary.view,
//         ),
//         const SizedBox(width: AppPaddings.small),
//         Text("12", style: Theme.of(context).textTheme.titleLarge),
//       ],
//     );
//   }
// }

// class CommentCountComponent extends StatelessWidget {
//   const CommentCountComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text("12", style: Theme.of(context).textTheme.titleLarge),
//         const SizedBox(width: AppPaddings.small),
//         Text("Kommentare", style: Theme.of(context).textTheme.titleLarge),
//       ],
//     );
//   }
// }
