import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_logic/comment_layer_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_logic/third_layer_comment.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/comment_comment.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detailed_image_page.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SecondLayerComment extends StatelessWidget {
  const SecondLayerComment({super.key, required this.comments});

  final List<CommentModel> comments;

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
                    ? ThirdLayerComment(comments: comment.comments)
                    : Container()))
            .toList());
  }
}
