import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/comment_layer_component.dart';

class ThirdLayerComment extends StatelessWidget {
  const ThirdLayerComment(
      {super.key, required this.comments, this.referenceName});

  final List<PostCommentModel> comments;
  final String? referenceName;

  // Was tut diese widget?
  // Everything is the same as in the SecondLayerComment widget and
  // deeper levels also build a ThirdLayerComment widget.
  // isThirdLayerOrMore is now set to true.
  // Also a referenceName is passed to the CommentComment widget.
  // The referenceName is the name of the user of the current comment.

  @override
  Widget build(BuildContext context) {
    return Column(
        children: comments
            .map((PostCommentModel comment) => CommentLayerComponent(
                isThirdLayerOrMore: true,
                isSecondLayerOrMore: true,
                comment: comment,
                referenceName: referenceName,
                nextLayer: comment.comments.isNotEmpty
                    ? ThirdLayerComment(
                        comments: comment.comments,
                        referenceName: comment.user!.username)
                    : Container()))
            .toList());
  }
}
