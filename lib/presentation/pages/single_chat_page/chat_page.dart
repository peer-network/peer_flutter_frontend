import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view_future_builder.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

class ChatPage extends StatelessWidget {
  // only chatcontact model
  const ChatPage({Key? key, required this.chatId, this.chatMsg})
      : super(key: key);

  final String chatId;
  final ChatMessageModel? chatMsg;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: const SecondaryAppbar(
        // title : chatMsg?.sender.username,
        title: 'Pamela Jones',
      ),
      child: ChatHistoryViewFutureBuilder(chatId: chatId),
    );
  }
}
