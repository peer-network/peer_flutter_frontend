import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, this.chatId, this.chatMsg}) : super(key: key);

  final String? chatId;
  final ChatMsg? chatMsg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      // body: ChatHistoryView(chatId: chatId),
      // the body
    );
  }
}
