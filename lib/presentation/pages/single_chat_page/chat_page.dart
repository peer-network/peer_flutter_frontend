// import 'package:flutter/material.dart';
// import 'package:peer_app/data/models/chat_contact_model.dart';
// import 'package:peer_app/presentation/pages/BasePage.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view_future_builder.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_screen.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_text_input.dart';
// import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_navbar.dart';
// import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

// class ChatPage extends StatelessWidget {
//   // only chatcontact model
//   const ChatPage({Key? key, required this.chatContact}) : super(key: key);

//   final ChatContactModel chatContact;

//   @override
//   Widget build(BuildContext context) {
//     return BasePage(
//       appBar: SecondaryAppbar(
//         title: chatContact.contact.username.toString(),
//         profileImageUrl: chatContact.contact.profileImageUrl.toString(),
//       ),
//       child: Column(
//         children: [
//           ChatHistoryViewFutureBuilder(chatContact: chatContact),
//         ],
//       ),
//       bottomNavigationBar: MessagingBottomNavbar(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/chat_contact_model.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_history_view_future_builder.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_screen.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/chat_text_input.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_navbar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/navbars/base_bottom_navbar.dart';

class ChatPage extends StatelessWidget {
  // only chatcontact model
  const ChatPage({Key? key, required this.chatContact}) : super(key: key);

  final ChatContactModel chatContact;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: SecondaryAppbar(
        title: chatContact.contact.username.toString(),
        profileImageUrl: chatContact.contact.profileImageUrl.toString(),
      ),
      bottomNavigationBar: SafeArea(child: CustomBottomNavBar()),
      child: Column(
        children: [
          ChatHistoryViewFutureBuilder(chatContact: chatContact),
        ],
      ),
    );
  }
}
