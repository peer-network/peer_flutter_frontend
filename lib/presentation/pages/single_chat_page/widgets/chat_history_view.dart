import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/single_chat_provider.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_page.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    // This page listens to the news feed provider
    SingleChatProvider singleChatMessengesProvider =
        Provider.of<SingleChatProvider>(context);

    // If the news feed provider is loading, show a loading indicator
    // If the news feed provider has an error, show an error message
    // If the news feed provider has data, show the feed;
    if (singleChatMessengesProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => singleChatMessengesProvider.fetchChatHistorie(),
      );
    } else if (singleChatMessengesProvider.error != null) {
      return ErrorComponent(error: singleChatMessengesProvider.error!);
    } else {
      // TODO implement pagination
      // height to be the height of the screen minus the height of the app bar and the bottom nav bar
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        color: CustomColors.backgroundColor,
        child: ListView.builder(
          itemCount: singleChatMessengesProvider.chatHistorie.length,
          itemBuilder: (context, index) {
            // return ChatContactCardComponent(
            //     chat: singleChatMessengesProvider.chatMessenges[index]);
            return Text("ChatHistoryView");
            // ChatPage(
            //     chatMsg: singleChatMessengesProvider.chatHistorie[index]);
          },
        ),
      );
    }
  }
}
