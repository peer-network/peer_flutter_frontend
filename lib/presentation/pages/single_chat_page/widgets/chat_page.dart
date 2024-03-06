import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, this.chatId, this.chatMsg}) : super(key: key);

  final String? chatId;
  final ChatMsg? chatMsg;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      child: const ChatHistoryView(),
    );
  }
}
