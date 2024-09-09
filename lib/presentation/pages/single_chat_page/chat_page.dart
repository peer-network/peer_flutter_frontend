import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_model.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view_future_builder.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_nav_bar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: SecondaryAppbar(
        title: chat.name.toString(),
        profileImageUrl: chat.image.toString(),
      ),
      bottomNavigationBar: SafeArea(
          child: MessagingBottomNavBar.messagingBottomNavBar(chat: chat)),
      child: ChatHistoryViewFutureBuilder(chat: chat),
    );
  }
}
