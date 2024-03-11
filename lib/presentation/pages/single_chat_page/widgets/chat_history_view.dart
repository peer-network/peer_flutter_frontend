// import 'package:flutter/material.dart';
// import 'package:peer_app/data/provider/single_chat_provider.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles_and_date.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
// import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
// import 'package:provider/provider.dart';

// class ChatHistoryView extends StatelessWidget {
//   const ChatHistoryView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // This page listens to the news feed provider
//     SingleChatProvider singleChatMessengesProvider =
//         Provider.of<SingleChatProvider>(context);

//     // If the news feed provider is loading, show a loading indicator
//     // If the news feed provider has an error, show an error message
//     // If the news feed provider has data, show the feed;
//     if (singleChatMessengesProvider.isLoading) {
//       return LoadingComponent(
//         onRefresh: () => singleChatMessengesProvider.fetchChatHistorie(),
//       );
//     } else if (singleChatMessengesProvider.error != null) {
//       return ErrorComponent(error: singleChatMessengesProvider.error!);
//     } else {
//       // TODO implement pagination
//       // height to be the height of the screen minus the height of the app bar and the bottom nav bar
//       return Container(
//         height: MediaQuery.of(context).size.height -
//             kToolbarHeight -
//             kBottomNavigationBarHeight,
//         color: CustomColors.backgroundColor,
//         child: ListView.builder(
//           itemCount: singleChatMessengesProvider.chatHistorie.length,
//           itemBuilder: (context, index) {
//             return ChatBubble(
//                 chatData: singleChatMessengesProvider.chatHistorie[index]);
//           },
//         ),
//       );
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peer_app/data/provider/single_chat_provider.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles_and_date.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chat_message_model.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    SingleChatProvider singleChatMessagesProvider =
        Provider.of<SingleChatProvider>(context);

    if (singleChatMessagesProvider.isLoading) {
      return LoadingComponent(
          onRefresh: singleChatMessagesProvider.fetchChatHistory);
    } else if (singleChatMessagesProvider.error != null) {
      return ErrorComponent(error: singleChatMessagesProvider.error!);
    } else {
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        color: CustomColors.backgroundColor,
        child: _buildChatList(singleChatMessagesProvider.chatHistory),
      );
    }
  }

  Widget _buildChatList(List<ChatMsg> chatHistory) {
    List<Widget> children = [];
    DateTime? lastDate;

    for (var i = 0; i < chatHistory.length; i++) {
      final message = chatHistory[i];
      final messageDate = DateTime(message.timestamp.year,
          message.timestamp.month, message.timestamp.day);

      if (lastDate == null || messageDate.isAfter(lastDate)) {
        String headerText;
        if (messageDate == DateTime.now()) {
          headerText = "Today";
        } else {
          headerText = DateFormat('MMMM d').format(message.timestamp);
        }
        children.add(
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(headerText,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        );
        lastDate = messageDate;
      }

      children.add(ChatBubble(chatData: message));
    }

    return ListView(
      children: children,
    );
  }
}
