import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/comment_layer_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/third_layer_comment.dart';

class SecondLayerComment extends StatelessWidget {
  const SecondLayerComment({super.key, required this.comments});

  final List<PostCommentModel> comments;

  // Was tut diese widget?
  // Everything is the same as in the FirstLayerComment widget,
  // but it is still needed to later determine the padding of it and it uses the ThirdLayerComment widget.
  // the boolean isThirdLayerOrMore is still set to false, because there is no refering to other comments.

  @override
  Widget build(BuildContext context) {
    return Column(
        children: comments
            .map((comment) => CommentLayerComponent(
                isSecondLayerOrMore: true,
                comment: comment,
                nextLayer: comment.comments.isNotEmpty
                    ? ThirdLayerComment(
                        comments: comment.comments,
                        referenceName: comment.user!.username,
                      ) // von hier namen NUR eine ebene runter geben
                    : Container()))
            .toList());
  }
}
