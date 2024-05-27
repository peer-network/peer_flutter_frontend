import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.chatData}) : super(key: key);

  final ChatMessageModel chatData;

  @override
  Widget build(BuildContext context) {
    bool isSender = chatData.isSender!;

    Alignment alignment =
        isSender ? Alignment.centerRight : Alignment.centerLeft;

    Color bubbleColor = isSender
        ? (Theme.of(context).brightness == Brightness.light
            ? LightColors.ownChatBubble // Light theme color for sender
            : DarkColors.ownChatBubble) // Dark theme color for sender
        : (Theme.of(context).brightness == Brightness.light
            ? LightColors.theirChatBubble // Light theme color for receiver
            : DarkColors.theirChatBubble); // Dark theme color for receiver

    Color textColor = Theme.of(context).brightness == Brightness.light
        ? LightColors.textDarkSubtle
        : DarkColors.textDarkSubtle;

    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPaddings.medium, vertical: AppPaddings.small),
        margin: isSender
            ? const EdgeInsets.only(
                left: AppPaddings.extraLarge,
                right: AppPaddings.medium,
                bottom: AppPaddings.tiny)
            : const EdgeInsets.only(
                right: AppPaddings.extraLarge,
                left: AppPaddings.medium,
                bottom: AppPaddings.tiny),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(AppDimensions.chatBubbleRadius),
            topRight: const Radius.circular(AppDimensions.chatBubbleRadius),
            bottomLeft:
                Radius.circular(isSender ? AppDimensions.chatBubbleRadius : 0),
            bottomRight:
                Radius.circular(isSender ? 0 : AppDimensions.chatBubbleRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: AppPaddings.tiny),
              child: Text(
                chatData.content,
                style: TextStyle(color: textColor),
              ),
            ),
            Text(
                FormattedDate(chatData.createdAt)
                    .getFormattedDate(formatType: DateFormatType.onlyTime),
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).brightness == Brightness.light
                          ? LightColors.textDarkSubtle
                          : DarkColors.textDarkSubtle,
                    )),
          ],
        ),
      ),
    );
  }
}
