import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view_future_builder.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_nav_bar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key, required this.chatContact}) : super(key: key);

  final ChatModel chatContact;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: SecondaryAppbar(
        // title: chatContact.contact.name.toString(),
        title: chatContact.name.toString(),
        // profileImageUrl: chatContact.contact.imageUrl.toString(),
        profileImageUrl: chatContact.image.toString(),
      ),
      bottomNavigationBar:
          const SafeArea(child: MessagingBottomNavBar.messagingBottomNavBar()),
      child: ChatHistoryViewFutureBuilder(chatContact: chatContact),
    );
  }
}
