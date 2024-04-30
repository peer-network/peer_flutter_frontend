import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/new_message_count_component.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatContactCardComponent extends StatelessWidget {
  final ChatModel chats;

  const ChatContactCardComponent({
    super.key,
    required this.chats,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(ChatPageRoute(chats));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.small),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AvatarComponent(imageUrl: chat.contact.imageUrl),
                AvatarComponent(imageUrl: chats.image),

                Expanded(
                  flex: 95,
                  child: Padding(
                    padding: const EdgeInsets.only(left: AppPaddings.small),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Where should the name of the chat be determined,
                        // in case it is not a groupcaht but a chat with a single user?
                        // >> In the backend?
                        Text(chats.name,
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),

                        Text(
                          chats.messages.isNotEmpty
                              ? chats.messages.last.content
                              : "No messages",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              // .copyWith(color: CustomColors.secondaryTextColor),
                              .copyWith(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? LightColors.textDarkSubtle
                                      : DarkColors.textDarkSubtle),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(flex: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: AppPaddings.medium),
                      child: chats.messages.last.content.isNotEmpty
                          ? Text(
                              FormattedDate(
                                      // chatContact.lastChatMessage!.created_at)
                                      chats.messages.last.createdAt)
                                  .getFormattedDate(
                                      formatType: DateFormatType.numbers),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? LightColors.textDarkSubtle
                                        : DarkColors.textDarkSubtle,
                                  ),
                            )
                          : Container(),
                    ),
                    // chatContact.notificationCount == 0 ||
                    chats.amountUnseenMessages == 0 ||
                            // chatContact.notificationCount == null
                            chats.amountUnseenMessages == null
                        ? Container()
                        : NewMessageCountComponent(
                            // notificationCount: chatContact.notificationCount!),
                            notificationCount: chats.amountUnseenMessages),
                    // FOR DEBUGGING
                    // Display all messages in the chat (does not work)
                    // ListView.builder(
                    //   itemCount: chats.messages.length,
                    //   itemBuilder: (context, index) {
                    //     return Text(chats.messages[index].content);
                    //   },
                    // ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppPaddings.small),
            const Divider(
              height: 2,
            )
          ],
        ),
      ),
    );
  }
}
