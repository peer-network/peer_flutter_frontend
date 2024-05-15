import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/image_post_card.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/small_text_post_card.dart';

class ProfileTextPostSection extends StatelessWidget {
  const ProfileTextPostSection(
      {super.key, required this.posts, required this.user});

  final List<FeedModel> posts;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    print('Posts Output >>>>>>>>>>>> Type Text: $posts ');
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: posts
            .map(
              (post) => SmallTextPostCard(
                user: user,
                post: post,
              ),
            )
            .toList(),
      ),
    );
  }
}
