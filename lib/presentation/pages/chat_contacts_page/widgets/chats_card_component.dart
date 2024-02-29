import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_tile.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chats_card_content_component.dart';

class ChatsCardComponent extends StatelessWidget {
  const ChatsCardComponent({super.key, required this.chat});

  final ChatMessagesModel chat;

  @override
  Widget build(BuildContext context) {
    return ChatTile(
      child: ChatsCardContentComponent(
        // chat: chat,
        user: chat.contact,
        lastMessage: chat.lastMessage!,
        notificationCount: chat.notificationCount,
        lastMessageTime: chat.lastMessageTime,
      ),
    );
  }
}
