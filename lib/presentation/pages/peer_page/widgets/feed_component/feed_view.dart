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
    // TODO implement pagination
    return Consumer<PostProvider>(builder: (context, provider, child) {
      if (provider.isLoading) {
        return LoadingComponent(
          onRefresh: () => provider.fetchPosts(),
        );
      } else if (provider.error != null) {
        return ErrorComponent(error: provider.error!);
      } else {
        return Container(
          height: MediaQuery.of(context).size.height -
              kToolbarHeight -
              kBottomNavigationBarHeight,
          color: Theme.of(context)
              .colorScheme
              .primaryContainer, // siehe figma muss so sein
          child: ListView.builder(
              itemCount: provider.post.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: (provider.post.length - 1 == index)
                      ? const EdgeInsets.only(bottom: AppPaddings.tiny)
                      : const EdgeInsets.only(bottom: AppPaddings.small),
                  child: FeedCardComponent(post: provider.post[index]),
                );
              }),
        );
      }
    });
  }
}
