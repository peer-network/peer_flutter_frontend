import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages.dart';
import 'package:peer_app/data/provider/chat_provider.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/contacts_card.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/notification_indicator.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';
import 'package:provider/provider.dart';

class ListContactsView extends StatelessWidget {
  const ListContactsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // chatProvider
    ChatProvider chatProvider = Provider.of<ChatProvider>(context);

    // If the chat provider is loading, show a loading indicator
    // If the chat provider has an error, show an error message
    // If the chat provider has data, show the chat contacts;
    return Container();
  }
}

class ChatCardComponent extends StatelessWidget {
  const ChatCardComponent({
    super.key,
    required this.chatMessagesModel,
  });

  final ChatMessagesModel chatMessagesModel;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).cardTheme.color!,
          ),
        ),
      ),
      child: ContactsCard(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPaddings.small),
          child: Row(
            children: [
              // TODO replace with widget
              ClipOval(
                child: Image.network(
                  chatMessagesModel.contact.imageUrl ??
                      "", // Replace with your actual image URL
                  width: 50, // Caspar // avoid conflict
                  height: 50, // Caspar // avoid conflict
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(AppPaddings.medium,
                    AppPaddings.small, AppPaddings.medium, AppPaddings.small),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO replace with actual name
                    Text(
                      'Pamela Jones',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      "sd".length > 20 ? '${"dsf".substring(0, 20)}...' : "dsf",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Freitag, 23:56',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const NotificationIndicator(notificationCount: 5)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
