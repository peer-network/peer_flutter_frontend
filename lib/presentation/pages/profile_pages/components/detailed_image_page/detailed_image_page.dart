import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';

import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_logic/first_layer_comment.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class DetailedImagePage extends StatelessWidget {
  final PostModel post;
  final String imageUrl;

  const DetailedImagePage(
      {super.key, required this.post, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: AppBar(
          title: const Text('Image Details'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                  tag: 'post-$imageUrl',
                  child: Image.network((post as ImagePost).imageUrls[0])),
              const SizedBox(height: AppPaddings.extraLarge),
              FirstLayerComment(comments: post.comments),
            ],
          ),
        ));
  }
}
