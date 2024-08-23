import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/image_slider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/text_box.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ContentBlock extends StatelessWidget {
  final PostModel post;

  const ContentBlock({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = (MediaQuery.of(context).size.width / 2) - 30;
    final double height = MediaQuery.of(context).size.width / 2 - 30;

    Widget buildContentWidget(PostModel post) {
      if (post is TextPost) {
        return TextContentBox(
          text: post.media,
          width: width,
          height: height,
        );
      } else if (post is ImagePost) {
        return ImageSlider(
          imageUrls: post.media,
          width: width,
          height: height,
        );
      } else if (post is VideoPost) {
        return ImageSlider(
          imageUrls: [post.media],
          width: width,
          height: height,
        );
      } else {
        return const Text(
            'Unknown post type (if you see this contact the developer pls thx)');
      }
    }

    return Padding(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(
        children: [buildContentWidget(post)],
      ),
    );
  }
}
