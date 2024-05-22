import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/custom_cached_network_image.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ProfileImagePostSection extends StatelessWidget {
  const ProfileImagePostSection({super.key, required this.posts});

  final List<PostModel> posts;

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
        return CustomCachedNetworkImage(
            imageUrl: (posts as List<ImagePost>)[index].imageUrls[0]);
      },
    );
  }
}
