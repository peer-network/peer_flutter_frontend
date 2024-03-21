import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_bubbles.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_written_out_date_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({
    super.key,
    required this.chatHistory,
    required this.context,
  });

  final List<ChatMessageModel> chatHistory;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    DateTime? lastDate;

    double bottomPadding = MediaQuery.of(context).viewInsets.bottom +
        60; // Assuming 60 as a placeholder height of the CustomBottomNavBar

    for (var i = 0; i < chatHistory.length; i++) {
      final message = chatHistory[i];
      final messageDate = DateTime(message.timestamp.year,
          message.timestamp.month, message.timestamp.day);

      if (lastDate == null || messageDate.isAfter(lastDate)) {
        // Use FormattedDateTextWidget for date headers
        children.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: Center(
              child: FormattedWrittenOutDateTextWidget(
                dateTime: messageDate,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color:
                        CustomColors.secondaryTextColor), // Customize as needed
              ),
            ),
          ),
        );
        lastDate = messageDate;
      }

      children.add(ChatBubble(chatData: message));
    }

    return ListView(
      padding: EdgeInsets.only(bottom: bottomPadding),
      children: children,
    );
  }
}
