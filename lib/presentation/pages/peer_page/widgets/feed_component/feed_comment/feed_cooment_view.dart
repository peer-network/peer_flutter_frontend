import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/comment_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedCoomentView extends StatelessWidget {
  const FeedCoomentView({
    super.key,
    required this.comments,
  });

  final List<FeedCommentModel> comments;

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
