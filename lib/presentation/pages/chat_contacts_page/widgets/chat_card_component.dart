import 'package:flutter/material.dart';
import 'package:peer_app/data/models/contacts_model.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_card_with_content_component.dart';

class ChatCardComponent extends StatelessWidget {
  const ChatCardComponent({super.key, required this.chat});

  final ContactsModel chat;

  @override
  Widget build(BuildContext context) {
    return ChatCardWithContentComponent(chat: chat);
  }
}
