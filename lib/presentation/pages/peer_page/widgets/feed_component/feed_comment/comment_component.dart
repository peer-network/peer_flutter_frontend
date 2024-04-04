import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/comment_main_content.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/comment_stats_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/sub_comment_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentComponent extends StatelessWidget {
  const CommentComponent({super.key, required this.comment});

  final CommentModel comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPaddings.small),
      child: Column(
        children: [
          CommentMainContent(comment: comment),
          CommentStatsComponent(comment: comment),
          SubCommentComponent(comments: comment.comments),
        ],
      ),
    );
  }
}
