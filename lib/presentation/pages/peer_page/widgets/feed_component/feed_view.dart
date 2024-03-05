import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/feed_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_card_component.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:provider/provider.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    // This page listens to the news feed provider
    NewsFeedProvider newsFeedProvider = Provider.of<NewsFeedProvider>(context);

    // If the news feed provider is loading, show a loading indicator
    // If the news feed provider has an error, show an error message
    // If the news feed provider has data, show the feed;
    if (newsFeedProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => newsFeedProvider.fetchNews(),
      );
    } else if (newsFeedProvider.error != null) {
      return ErrorComponent(error: newsFeedProvider.error!);
    } else {
      // TODO implement pagination
      // height to be the height of the screen minus the height of the app bar and the bottom nav bar
      return Container(
        height: MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight,
        color: CustomColors.secondaryBackgroundColor,
        child: ListView.builder(
          itemCount: newsFeedProvider.newsFeed.length,
          itemBuilder: (context, index) {
            if (newsFeedProvider.newsFeed[index].creator == null) {
              return Container();
            }
            return FeedCardComponent(feed: newsFeedProvider.newsFeed[index]);
          },
        ),
      );
    }
  }
}
