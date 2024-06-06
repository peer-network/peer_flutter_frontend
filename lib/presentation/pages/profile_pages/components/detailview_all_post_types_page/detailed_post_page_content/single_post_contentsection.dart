import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detailed_post_page_content/single_post_image_content.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detailed_post_page_content/single_post_text_content.dart';

class SinglePostContentsection extends StatelessWidget {
  final PostModel post;

  const SinglePostContentsection({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    if (post is ImagePost) {
      // return SinglePostImageContent(post: post);
      return SinglePostImageContent(post: (post as ImagePost));
    } else if (post is TextPost) {
      return SinglePostTextContent(post: post); // show text
    } else {
      // TODO add more post types
      return Text(post.runtimeType.toString());
    }
  }
}
