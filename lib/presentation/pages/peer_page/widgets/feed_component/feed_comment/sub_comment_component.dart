import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_comment/comment_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SubCommentComponent extends StatelessWidget {
  const SubCommentComponent({super.key, required this.comments});

  final List<PostCommentModel> comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPaddings.small + AppDimensions.avatarSize,
        top: AppPaddings.small,
        bottom: AppPaddings.small,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return CommentComponent(comment: comments[index]);
        },
      ),
    );
  }
}
