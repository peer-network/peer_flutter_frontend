import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_message_model.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_notification_search_bar.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chats_view.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_page.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatPageTop extends StatelessWidget {
  const ChatPageTop({super.key, this.chatId, this.chatMsg});

  final String? chatId;
  final ChatMsg? chatMsg;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: const SecondaryAppbar(title: 'XXXXXXXXX'),
        bottomNavigationBar: PrimaryBottomNavbar(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
          child: Column(
            children: [
              const NotificationAndSearchBar(),
              // ChatsView(), // xchange
              ChatPageBottom(chatId: chatId, chatMsg: chatMsg),
            ],
          ),
        ));
  }
}
