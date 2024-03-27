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

  TextEditingController searchQueryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchQueryController.addListener(() {
      setState(() {
        // This will trigger a rebuild with the updated search query.
      });
    });
  }

  @override
  void dispose() {
    searchQueryController.dispose();
    super.dispose();
  }

  void toggleContact(String contactId) {
    setState(() {
      if (activeContacts.contains(contactId)) {
        activeContacts.remove(contactId);
      } else {
        activeContacts.add(contactId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: const SecondaryAppbar(title: 'Beitrag Verschicken'),
      bottomNavigationBar: activeContacts.isNotEmpty
          ? const SharePostContactBottomNavbar()
          : null,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
            child: SearchField(
              controller: searchQueryController,
            ),
          ),
          Expanded(
            child: SharePostContactsView(
              toggleContact: toggleContact,
              activeContacts: activeContacts,
              searchQuery: searchQueryController.text,
            ),
          ),
        ],
      ),
    );
  }
}
