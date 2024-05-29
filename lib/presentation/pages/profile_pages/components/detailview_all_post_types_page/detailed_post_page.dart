import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';

import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_logic/first_layer_comment.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

// SinglePostContentSection
// 1. bekommt von comments (von posts?) die wichtigen sachen (type, media/content/whatever)
// 2. dieses widget schaut nach dem type und zeigt das entsprechende widget an
// type == text -> zeigt text an, type == image -> zeigt hero image an

// Neuer Name: SinglePostPage
// 1. Bleibt unverändert, nur die Hero-Image-Section wird dynamisch
// 2. dummy data machen, damit man auch auf einen Text-Post klicken kann
class DetailedPostPage extends StatelessWidget {
  final PostModel post;

  const DetailedPostPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: AppBar(
          title: const Text(''),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // das wird ein dynamisches widget:
              SinglePostContentsection(post: post),

              // Hero(
              //     tag: 'post-${(post as ImagePost).imageUrls[0]}',
              //     child: Image.network((post as ImagePost).imageUrls[0])),
              const SizedBox(height: AppPaddings.extraLarge),
              FirstLayerComment(comments: post.comments),
            ],
          ),
        ));
  }
}

class SinglePostContentsection extends StatelessWidget {
  final PostModel post;

  const SinglePostContentsection({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    if (post is ImagePost) {
      return SinglePostImageContent(post: post);
    } else if (post is TextPost) {
      return SinglePostTextContent(post: post); // show text
    } else {
      // TODO add more post types
      return Text(post.runtimeType.toString());
    }
  }
}

class SinglePostTextContent extends StatelessWidget {
  const SinglePostTextContent({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    // TODO style text and show more text features (if multiole pages)
    return Text((post as TextPost).content);
  }
}

class SinglePostImageContent extends StatelessWidget {
  const SinglePostImageContent({
    super.key,
    required this.post,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    // TODO: for later have all imageUrls shown in a side slider or carousel
    return Hero(
        tag: 'post-${(post as ImagePost).imageUrls[0]}',
        child: Image.network((post as ImagePost).imageUrls[0]));
  }
}
