import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/custom_cached_network_image.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ProfileImagePostSection extends StatelessWidget {
  const ProfileImagePostSection({super.key, required this.posts});

  final List<FeedModel> posts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: AppMargins.tiny,
        mainAxisSpacing: AppMargins.tiny,
      ),
      itemBuilder: (context, index) {
        // print the id of the post
        print(posts[index].id);
        return CustomCachedNetworkImage(imageUrl: posts[index].imageUrls[0]);
        // return CustomCachedNetworkImage(imageUrl: posts[index].content);
      },
    );
  }
}
