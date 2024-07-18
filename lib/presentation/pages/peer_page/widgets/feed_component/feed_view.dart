import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_card_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/error_component.dart';
import 'package:peer_app/presentation/whitelabel/components/loading_and_error/loading_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    // This page listens to the news feed provider
    PostProvider newsFeedProvider = Provider.of<PostProvider>(context);

    // If the news feed provider is loading, show a loading indicator
    // If the news feed provider has an error, show an error message
    // If the news feed provider has data, show the feed;
    switch (newsFeedProvider.state) {
      case PostProviderState.loading:
        return LoadingComponent(
          onRefresh: () => newsFeedProvider.fetchPosts(),
        );
      case PostProviderState.error:
        return ErrorComponent(error: newsFeedProvider.error!);
      case PostProviderState.loaded:
        // TODO implement pagination
        // height to be the height of the screen minus the height of the app bar and the bottom nav bar
        return Container(
          height: MediaQuery.of(context).size.height -
              kToolbarHeight -
              kBottomNavigationBarHeight,
          color: Theme.of(context)
              .colorScheme
              .primaryContainer, // see figma has to be like this
          child: ListView.builder(
              itemCount: newsFeedProvider.newsFeed.length,
              itemBuilder: (context, index) {
                if (newsFeedProvider.newsFeed.length - 1 == index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppPaddings.tiny),
                    child: FeedCardComponent(
                        post: newsFeedProvider.newsFeed[index]),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppPaddings.small),
                    child: FeedCardComponent(
                        post: newsFeedProvider.newsFeed[index]),
                  );
                }
              }),
        );
      default:
        return Center(child: Text('No data available'));
    }
  }
}
