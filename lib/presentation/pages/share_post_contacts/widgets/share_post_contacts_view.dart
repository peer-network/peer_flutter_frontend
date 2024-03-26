// // SharePostContactsView uses ChatContactsProvider to fetch chat contacts
// // and then dislays a custom "SharePostContactCardComponent" for each chat contact.

// import 'package:flutter/material.dart';
// import 'package:peer_app/data/provider/chat_contacts_provider.dart';
// import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_card_component.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
// import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
// import 'package:provider/provider.dart';

// class SharePostContactsView extends StatelessWidget {
//   const SharePostContactsView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ChatContactsProvider chatContactsProvider =
//         Provider.of<ChatContactsProvider>(context);

//     if (chatContactsProvider.isLoading) {
//       return LoadingComponent(
//         onRefresh: () => chatContactsProvider.fetchChatContacts(),
//       );
//     } else if (chatContactsProvider.error != null) {
//       return ErrorComponent(error: chatContactsProvider.error!);
//     } else {
//       // TODO implement pagination
//       // height to be the height of the screen minus the height of the app bar and the bottom nav bar
//       return Container(
//         height: MediaQuery.of(context).size.height -
//             kToolbarHeight -
//             kBottomNavigationBarHeight,
//         color: CustomColors.backgroundColor,
//         child: ListView.builder(
//           itemCount: chatContactsProvider.chatContacts.length,
//           itemBuilder: (context, index) {
//             return SharePostContactCardComponent(
//                 chatContact: chatContactsProvider.chatContacts[index]);
//           },
//         ),
//       );
//     }
//   }
// }

// SharePostContactsView uses ChatContactsProvider to fetch chat contacts
// and then dislays a custom "SharePostContactCardComponent" for each chat contact.

import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/chat_contacts_provider.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_card_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

class SharePostContactsView extends StatelessWidget {
  final Set<String> activeContacts;
  final Function(String) toggleContact;

  const SharePostContactsView({
    super.key,
    required this.activeContacts,
    required this.toggleContact,
  });

  @override
  Widget build(BuildContext context) {
    ChatContactsProvider chatContactsProvider =
        Provider.of<ChatContactsProvider>(context);

    if (chatContactsProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => chatContactsProvider.fetchChatContacts(),
      );
    } else if (chatContactsProvider.error != null) {
      return ErrorComponent(error: chatContactsProvider.error!);
    } else {
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        color: CustomColors.backgroundColor,
        child: ListView.builder(
          itemCount: chatContactsProvider.chatContacts.length,
          itemBuilder: (context, index) {
            final chatContact = chatContactsProvider.chatContacts[index];
            return SharePostContactCardComponent(
              chatContact: chatContact,
              isSelected: activeContacts
                  .contains(chatContact.id), // Assuming chatContact has an id
              onSelect: toggleContact,
            );
          },
        ),
      );
    }
  }
}
