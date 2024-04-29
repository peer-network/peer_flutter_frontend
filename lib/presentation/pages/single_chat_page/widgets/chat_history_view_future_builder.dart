// ChatHistoryViewFutureBuilder
//tries to fetch the chat history between user and a chat contact
// if waiting -> LoadingComponent
// if error -> ErrorComponent
// if data is loaded -> ChatHistoryView

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_builder_repository.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import '../../../../data/models/chat_message_model.dart';

class ChatHistoryViewFutureBuilder extends StatelessWidget {
  const ChatHistoryViewFutureBuilder({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChatMessageModel>>(
      // TODO: currentUserId should be dynamic
      future: ChatBuilderRepository(
              currentUserId: 'c05a6e6e-5365-40ca-b2d5-29af9f1cb1c6', chat: chat)
          .fetchChatHistory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingComponent(); // Show loading while the future is incomplete
        } else if (snapshot.hasError) {
          return ErrorComponent(
              error: snapshot.error
                  .toString()); // Show error if something went wrong
        } else if (snapshot.hasData) {
          // Data is loaded, build your list
          return Container(
            height: MediaQuery.of(context).size.height -
                kToolbarHeight -
                kBottomNavigationBarHeight,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: ChatHistoryView(chatHistory: snapshot.data!),
          );
        } else {
          // Handle the case where snapshot.data is null
          return const ErrorComponent(error: 'No data available');
        }
      },
    );
  }
}
