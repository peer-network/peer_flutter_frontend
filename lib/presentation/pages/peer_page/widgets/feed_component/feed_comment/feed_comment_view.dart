import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/comment_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedCommentView extends StatelessWidget {
  const FeedCommentView({
    super.key,
    required this.comments,
  });

  final List<PostCommentModel> comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: // listview builder from the commentsComponent
          ListView.builder(
        shrinkWrap: true,
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return CommentComponent(comment: comments[index]);
        },
      ),
    );
  }
}
