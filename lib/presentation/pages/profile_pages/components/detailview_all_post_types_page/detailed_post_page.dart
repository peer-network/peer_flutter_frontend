import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detail_post_comments_wrapper_id.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detailed_post_page_content/single_post_contentsection.dart';

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
    final client = GraphQLProvider.of(context).value;
    return BasePage(
        appBar: AppBar(
          title: const Text(''),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // das wird ein dynamisches widget:
              SinglePostContentsection(post: post),

              const SizedBox(height: AppPaddings.extraLarge),
              // FirstLayerComment(comments: post.comments),
              DetailedPostCommentsWrapperId(
                  client: client,
                  postId: post.id) // Erst muss ich den Future builder bauen
              //TODO: quick fix because video is not working
            ],
          ),
        ));
  }
}
