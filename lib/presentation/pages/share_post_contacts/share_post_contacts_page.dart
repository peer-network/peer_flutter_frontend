// import 'package:flutter/material.dart';
// import 'package:peer_app/presentation/pages/BasePage.dart';
// import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_bottom_navbar.dart';
// import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contacts_view.dart';
// import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
// import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class SharePostContactsPage extends StatelessWidget {
//   const SharePostContactsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const BasePage(
//         appBar: SecondaryAppbar(title: 'Beitrag Verschicken'),
//         bottomNavigationBar: SharePostContactBottomNavbar(),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SearchField(),
//                 SharePostContactsView(),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contacts_view.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostContactsPage extends StatefulWidget {
  const SharePostContactsPage({super.key});

  @override
  _SharePostContactsPageState createState() => _SharePostContactsPageState();
}

class _SharePostContactsPageState extends State<SharePostContactsPage> {
  final Set<String> activeContacts = {};

  void toggleContact(String contactId) {
    setState(() {
      if (activeContacts.contains(contactId)) {
        activeContacts.remove(contactId);
      } else {
        activeContacts.add(contactId);
        print(contactId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: SecondaryAppbar(title: 'Beitrag Verschicken'),
      // if activeContacts is not empty, display the bottom navbar
      bottomNavigationBar:
          activeContacts.isNotEmpty ? SharePostContactBottomNavbar() : null,
      // bottomNavigationBar:
      //     SharePostContactBottomNavbar(), // TODO: only display if activeContacts is not empty
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchField(),
              SharePostContactsView(
                  toggleContact: toggleContact, activeContacts: activeContacts),
            ],
          ),
        ),
      ),
    );
  }
}
