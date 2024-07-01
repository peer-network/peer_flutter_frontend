import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_card_component.dart';
import 'package:peer_app/presentation/pages/share_post/share_to_listed_contacts_view.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_nav_bar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

class SharePostPage extends StatefulWidget {
  const SharePostPage({
    super.key,
    required this.feed,
    required this.activeContacts,
  });

  final PostModel feed;
  final Set<String> activeContacts;

  // Liste an Contacten an die geshared wird

  // DONE: Feedmodel object dass geshared wird

  @override
  State<SharePostPage> createState() => _SharePostPageState();
}

class _SharePostPageState extends State<SharePostPage> {
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

  @override
  Widget build(BuildContext context) {
    // define NewsFeedProvider
    // NewsFeedProvider newsFeedProvider = Provider.of<NewsFeedProvider>(context, listen: true);
    return BasePage(
        appBar: const SecondaryAppbar(title: 'Beitrag Verschicken'),
        bottomNavigationBar: const SafeArea(
            child: MessagingBottomNavBar.messagingBottomNavBar()),
        // TODO: übergebe active contacts und feedmodel an bottomnavbar
        child: ListView(children: <Widget>[
          // Text(widget.activeContacts.toString(),
          //     textDirection: TextDirection.ltr),
          ShareToListedContactsView(activeContacts: widget.activeContacts),
          FeedCardComponent(post: widget.feed),
        ]));
  }
}
