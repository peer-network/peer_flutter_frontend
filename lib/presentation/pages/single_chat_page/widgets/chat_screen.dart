import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_text_input.dart';
// Import your ChatHistoryView and PillShapedTextInput widgets here

class ChatScreen extends StatelessWidget {
  // Assuming you have chatHistory data available here
  final List<ChatMessageModel> chatHistory;

  ChatScreen({Key? key, required this.chatHistory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        // Other AppBar properties as needed
      ),
      body: Column(
        children: [
          Flexible(
            child: ChatHistoryView(
              chatHistory: chatHistory,
              context: context,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChatTextInput(), // Your custom text input widget
          ),
        ],
      ),
    );
  }
}
