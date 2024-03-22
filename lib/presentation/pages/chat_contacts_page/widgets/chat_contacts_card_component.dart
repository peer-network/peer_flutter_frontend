import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/new_message_count_component.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatContactCardComponent extends StatelessWidget {
  final ChatContactModel chatContact;

  const ChatContactCardComponent({
    super.key,
    required this.chatContact,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(ChatPageRoute(chatContact));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.small, vertical: AppPaddings.small),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarComponent(imageUrl: chatContact.contact.profileImageUrl),
                Expanded(
                  flex: 95,
                  child: Padding(
                    padding: const EdgeInsets.only(left: AppPaddings.small),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(chatContact.contact.username,
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                        Text(chatContact.lastChatMessage?.content ?? "",
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
                      child: chatContact.lastChatMessage != null
                          ? Text(
                              FormattedDate(
                                      chatContact.lastChatMessage!.timestamp)
                                  .getFormattedDate(formatType: 'letters'),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: CustomColors.secondaryTextColor),
                            )
                          : Container(),
                    ),
                    chatContact.notificationCount == 0 ||
                            chatContact.notificationCount == null
                        ? Container()
                        : NewMessageCountComponent(
                            notificationCount: chatContact.notificationCount!),
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
