import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
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
        return GestureDetector(
          onTap: () {
// <<<<<<< HEAD
            Navigator.of(context).push(DetailedPostPageRoute(
                // posts[index], (posts[index] as ImagePost).imageUrls[0]));
                posts[index]));
          },
          child: Hero(
            tag: 'post-${(posts[index] as ImagePost).media}',
            child: CustomCachedNetworkImage(
                imageUrl: (posts[index] as ImagePost).media[0]),
          ),
// =======
//             Navigator.of(context).push(DetailedImagePageRoute(
//                 posts[index], (posts[index] as ImagePost).media));
//           },
//           child: CustomCachedNetworkImage(
//               imageUrl: (posts[index] as ImagePost).media),
// >>>>>>> dev
        );
      },
    );
  }
}
