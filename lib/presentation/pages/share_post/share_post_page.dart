import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/provider/feed_provider.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_card_component.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contact_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/share_post_contacts/widgets/share_post_contacts_view.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_nav_bar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/search_elements/text_search.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SharePostPage extends StatefulWidget {
  const SharePostPage({super.key, required this.feed});
  final FeedModel feed;

  // Liste an Contacten an die geshared wird
  // Feedmodel object dass geshared wird

  @override
  _SharePostPageState createState() => _SharePostPageState();
}

class _SharePostPageState extends State<SharePostPage> {
  // keine active contacts definieren hier
  // kein newsfeedprovider definieren hier

  // nur den textcontroller für beschreibung definieren
  final Set<String> activeContacts = {};
  final NewsFeedProvider _newsFeedProvider = NewsFeedProvider();

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
    // define NewsFeedProvider
    // NewsFeedProvider newsFeedProvider = Provider.of<NewsFeedProvider>(context, listen: true);
    return BasePage(
      appBar: const SecondaryAppbar(title: 'Beitrag Verschicken'),
      bottomNavigationBar:
          const SafeArea(child: MessagingBottomNavBar.messagingBottomNavBar()),
      child: SingleChildScrollView(child: FeedCardComponent(feed: widget.feed)),
    );
  }
}
