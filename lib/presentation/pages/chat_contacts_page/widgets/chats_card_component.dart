import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_messages_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_tile.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chats_card_content_component.dart';

class ChatsCardComponent extends StatelessWidget {
  const ChatsCardComponent({super.key, required this.chats});

  final ChatMessagesModel chats;

  @override
  Widget build(BuildContext context) {
    return ChatTile(
      child: Column(
        children: [
          ChatsCardContentComponent(
            chats: chats,
          ),
        ],
      ),
    );
  }
}
