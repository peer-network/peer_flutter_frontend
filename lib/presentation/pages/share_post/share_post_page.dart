import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contacts_view.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostPage extends StatefulWidget {
  const SharePostPage({super.key});

  @override
  _SharePostContactsPageState createState() => _SharePostContactsPageState();
}

class _SharePostContactsPageState extends State<SharePostPage> {
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
      child: Column(
        children: [
          // TODO: Content
          Container(),
          // TODO: Text input and Send button
          Container(),
        ],
      ),
    );
  }
}
