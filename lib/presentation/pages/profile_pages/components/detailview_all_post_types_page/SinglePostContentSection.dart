// SinglePostContentSection
// 1. bekommt von comments (von posts?) die wichtigen sachen (type, media/content/whatever)
// 2. dieses widget schaut nach dem type und zeigt das entsprechende widget an
// type == text -> zeigt text an, type == image -> zeigt hero image an

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detailed_post_page.dart';

class SinglePostContentSection extends StatelessWidget {
  final PostModel post;
  final String imageUrl;

  const SinglePostContentSection(
      {super.key, required this.post, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (post.runtimeType.toString() == "image") {
      return DetailedPostPage(post: post);
    } else if (post is TextPost) {
      return Container(); // show text
    } else {
      return Container();
    }
  }
}
