import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';

class ChatContactsPage extends StatelessWidget {
  const ChatContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: const SecondaryAppbar(
            leftText: 'Zurück', mainText: 'Chat', rightText: '       '),
        bottomNavigationBar: PrimaryBottomNavbar(),
        child: Container());
  }
}
