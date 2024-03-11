import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart'; // Make sure this path matches your project structure
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart'; // Adjust if necessary

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.chatData}) : super(key: key);

  final ChatMessageModel chatData;

  @override
  Widget build(BuildContext context) {
    // Determine the alignment based on whether the message is sent by the user
    bool isSender = chatData.isSender;
    Alignment alignment =
        isSender ? Alignment.centerRight : Alignment.centerLeft;

    // Determine the bubble color based on whether the message is sent by the user
    Color bubbleColor = isSender
        ? CustomColors.primaryChatBubbleColor
        : CustomColors.secondaryChatBubbleColor;
    // Color textColor = isSender ? Colors.white : Colors.black;
    Color textColor = CustomColors.primaryTextColor;

    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.medium, vertical: AppPaddings.small),
        margin: const EdgeInsets.symmetric(
            horizontal: AppPaddings.medium, vertical: AppPaddings.tiny),
        decoration: BoxDecoration(
          color: bubbleColor,
          // borderRadius: BorderRadius.circular(8),
          // curcular border radius
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: Radius.circular(isSender ? 20 : 0),
            bottomRight: Radius.circular(isSender ? 0 : 20),
          ),
        ),
        child: Text(
          chatData.content,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
