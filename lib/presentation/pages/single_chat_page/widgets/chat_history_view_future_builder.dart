import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_builder_repository.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import '../../../../data/models/chat_message_model.dart';

// unterteilen in ChatHistoryView und ChatHistoryViewFutureBuilder
class ChatHistoryViewFutureBuilder extends StatelessWidget {
  const ChatHistoryViewFutureBuilder({super.key, required this.chatId});

  final String chatId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChatMessageModel>>(
      future:
          ChatBuilderRepository(currentUserId: '1').fetchChatHistory(chatId),
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
            color: CustomColors.backgroundColor,
            child:
                ChatHistoryView(chatHistory: snapshot.data!, context: context),
          );
        } else {
          // Handle the case where snapshot.data is null
          return const ErrorComponent(error: 'No data available');
        }
      },
    );
  }
}
