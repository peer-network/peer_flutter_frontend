import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/new_message_count_component.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatContactCardComponent extends StatelessWidget {
  //chatContact
  final ChatContactModel chat;

  const ChatContactCardComponent({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(ChatPageRoute(chat.id)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.small),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarComponent(imageUrl: chat.contact.profileImageUrl),
                Expanded(
                  flex: 95,
                  child: Padding(
                    padding: const EdgeInsets.only(left: AppPaddings.small),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(chat.contact.username,
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                        // Update to display lastChatMessage content
                        Text(chat.lastChatMessage?.content ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: CustomColors.secondaryTextColor),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
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
                      // Update to display lastChatMessage timestamp
                      child: chat.lastChatMessage != null
                          ? FormattedDateTextWidget(
                              dateTime: chat.lastChatMessage!.timestamp,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: CustomColors.secondaryTextColor),
                            )
                          : Container(),
                    ),
                    chat.notificationCount == 0 ||
                            chat.notificationCount == null
                        ? Container()
                        : NewMessageCountComponent(
                            notificationCount: chat.notificationCount!),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppPaddings.small),
            const Divider(
              height: 2,
              color: CustomColors.cardBorderColor,
            )
          ],
        ),
      ),
    );
  }
}
