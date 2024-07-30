import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/comment_layer_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/second_layer_comment.dart';

class FirstLayerComment extends StatelessWidget {
  const FirstLayerComment({super.key, required this.comments});

  final List<PostCommentModel> comments;

  // Was tut diese widget?
  // 1. create a Column and use the spreading operator on the comments list.
  // For each comment that got spreaded, create a Column widget with a list of children.
  // 2. The children list contains a CommentComment widget (which is a single comment) and a SecondLayerComment widget.
  // In case the comment has no comments, the SecondLayerComment widget is not shown.

  @override
  Widget build(BuildContext context) {
    // for each comment build a first layer comment
    return Column(
        children: comments
            .map((comment) => CommentLayerComponent(
                  comment: comment,
                  nextLayer: (comment.subComments != null)
                      ? comment.subComments!.isNotEmpty
                          ? SecondLayerComment(comments: comment.subComments!)
                          : Container()
                      : Container(),
                ))
            .toList());
  }
}
