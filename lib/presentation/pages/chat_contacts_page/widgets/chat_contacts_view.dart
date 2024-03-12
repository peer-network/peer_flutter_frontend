import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/contacts_provider.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_card_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

class ChatContactsView extends StatelessWidget {
  const ChatContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    // This page listens to the news feed provider
    ChatContactsProvider chatContactsProvider =
        Provider.of<ChatContactsProvider>(context);

    // If the news feed provider is loading, show a loading indicator
    // If the news feed provider has an error, show an error message
    // If the news feed provider has data, show the feed;
    if (chatContactsProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => chatContactsProvider.fetchChatContacts(),
      );
    } else if (chatContactsProvider.error != null) {
      return ErrorComponent(error: chatContactsProvider.error!);
    } else {
      // TODO implement pagination
      // height to be the height of the screen minus the height of the app bar and the bottom nav bar
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        color: CustomColors.backgroundColor,
        child: ListView.builder(
          itemCount: chatContactsProvider.chatContacts.length,
          itemBuilder: (context, index) {
            return ChatContactsCardComponent(
                chat: chatContactsProvider.chatContacts[index]);
          },
        ),
      );
    }
  }
}
