import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/chat_provider.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_card_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class ChatContactsView extends StatelessWidget {
  const ChatContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    ChatProvider chatsProvider = Provider.of<ChatProvider>(context);

    // ChatContactsProvider chatContactsProvider =
    // Provider.of<ChatContactsProvider>(context);

    if (chatsProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => chatsProvider.fetchChats(),
      );
    } else if (chatsProvider.error != null) {
      return ErrorComponent(error: chatsProvider.error!);
    } else {
      // TODO implement pagination
      // height to be the height of the screen minus the height of the app bar and the bottom nav bar
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        // color: CustomColors.backgroundColor,
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.backgroundScreen
            : DarkColors.backgroundScreen,
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: chatsProvider.chats.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
              child:
                  ChatContactCardComponent(chats: chatsProvider.chats[index]),
            );
          },
        ),
      );
    }
  }
}
