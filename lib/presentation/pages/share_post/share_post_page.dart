import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_card_component.dart';
import 'package:peer_app/presentation/pages/single_chat_page/widgets/messaging_bottom_nav_bar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

class SharePostPage extends StatefulWidget {
  const SharePostPage({
    super.key,
    required this.feed,
    required this.activeContacts,
  });

  final FeedModel feed;
  final Set<String> activeContacts;

  // Liste an Contacten an die geshared wird

  // DONE: Feedmodel object dass geshared wird

  @override
  _SharePostPageState createState() => _SharePostPageState();
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
          Text(widget.activeContacts.toString(),
              textDirection: TextDirection.ltr),
          FeedCardComponent(feed: widget.feed),
        ]));
  }
}
