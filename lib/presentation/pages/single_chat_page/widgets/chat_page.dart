import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';

class ChatPageBottom extends StatelessWidget {
  const ChatPageBottom({Key? key, this.chatId, this.chatMsg}) : super(key: key);

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
