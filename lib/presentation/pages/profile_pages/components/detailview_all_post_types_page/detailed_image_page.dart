import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';

import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_logic/first_layer_comment.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

// SinglePostContentSection
// 1. bekommt von comments die wichtigen sachen (type, media/content/whatever)
// 2. dieses widget schaut nach dem type und zeigt das entsprechende widget an
// type == text -> zeigt text an, type == image -> zeigt hero image an

// Neuer Name: SinglePostPage
// 1. Bleibt unverändert, nur die Hero-Image-Section wird dynamisch
// 2. dummy data machen, damit man auch auf einen Text-Post klicken kann
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
