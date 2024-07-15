import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_card_component.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    // This page listens to the news feed provider
    PostProvider newsFeedProvider = Provider.of<PostProvider>(context);

    // If the news feed provider is loading, show a loading indicator
    // If the news feed provider has an error, show an error message
    // If the news feed provider has data, show the feed;
    if (newsFeedProvider.isLoading) {
      return LoadingComponent(
        onRefresh: () => newsFeedProvider.fetchPosts(),
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
        color: Theme.of(context)
            .colorScheme
            .primaryContainer, // siehe figma muss so sein
        child: ListView.builder(
            itemCount: newsFeedProvider.newsFeed.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: (newsFeedProvider.newsFeed.length - 1 == index)
                    ? const EdgeInsets.only(bottom: AppPaddings.tiny)
                    : const EdgeInsets.only(bottom: AppPaddings.small),
                child:
                    FeedCardComponent(post: newsFeedProvider.newsFeed[index]),
              );
            }),
      );
    }
  }
}
