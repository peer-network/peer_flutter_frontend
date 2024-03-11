import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/single_chat_provider.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles_and_date.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chat_message_model.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_written_out_date_text_widget.dart';

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
        // Use FormattedDateTextWidget for date headers
        children.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: FormattedWrittenOutDateTextWidget(
                dateTime: messageDate,
                style: TextStyle(
                    fontWeight: FontWeight.bold), // Customize as needed
              ),
            ),
          ),
        );
        lastDate = messageDate;
      }

      children.add(ChatBubble(chatData: message));
    }

    return ListView(children: children);
  }
}
