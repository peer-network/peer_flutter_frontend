import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_notification_search_bar.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chats_view.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatContactsPage extends StatelessWidget {
  const ChatContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: const SecondaryAppbar(title: 'Chat'),
        bottomNavigationBar: PrimaryBottomNavbar(),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
              child: Column(
                children: [
                  NotificationAndSearchBar(),
                  ChatsView(),
                ],
              ),
            ),
          ],
        ));
  }
}