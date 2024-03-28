// import 'package:flutter/material.dart';
// import 'package:peer_app/presentation/pages/BasePage.dart';
// import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_notification_search_bar.dart';
// import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_view.dart';
// import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
// import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class ChatContactsPage extends StatelessWidget {
//   const ChatContactsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const BasePage(
//         appBar: SecondaryAppbar(title: 'Chat'),
//         bottomNavigationBar: PrimaryBottomNavbar(),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 ChatContactsSearchBar(),
//                 ChatContactsView(),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_notification_search_bar.dart';
import 'package:peer_app/presentation/pages/chat_contacts_page/widgets/chat_contacts_view.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/primary_bottom_navbar.dart';

class ChatContactsPage extends StatelessWidget {
  const ChatContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
        appBar: SecondaryAppbar(title: 'Chat'),
        bottomNavigationBar: PrimaryBottomNavbar(),
        child: Column(
          children: [
            ChatContactsSearchBar(),
            Expanded(child: ChatContactsView()),
          ],
        ));
  }
}
