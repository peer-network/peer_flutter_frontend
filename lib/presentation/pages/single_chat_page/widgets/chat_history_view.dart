// // ChatHistoryView
// // Checks the chat messages for their date and affectively
// // displays them grouped after date

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({
    super.key,
    required this.chatHistory,
  });

  final List<ChatMessageModel> chatHistory;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    String? lastDateString;

    for (var i = 0; i < chatHistory.length; i++) {
      final message = chatHistory[i];
      // Parse the timestamp to DateTime only for comparison
      final messageDate = DateTime.parse(message.timestamp);
      final messageDateString = DateFormat('yyyy-MM-dd').format(messageDate);

      if (lastDateString == null || messageDateString != lastDateString) {
        children.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: Center(
              child: Text(
                FormattedDate(message.timestamp)
                    .getFormattedDate(formatType: DateFormatType.noTime),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: CustomColors.secondaryTextColor),
              ),
            ),
          ),
        );
        lastDateString = messageDateString;
      }

      children.add(ChatBubble(chatData: message));
    }

    return ListView.builder(
        itemBuilder: (context, index) {
          return children[index];
        },
        itemCount: children.length);
  }
}
