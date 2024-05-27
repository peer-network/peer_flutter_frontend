import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_logic/second_layer_comment.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/comment_comment.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/detailed_image_page.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FirstLayerComment extends StatelessWidget {
  const FirstLayerComment({super.key, required this.comments});

  final List<CommentModel> comments;

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
            .map((comment) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPaddings.tiny),
                      child: Container(
                        color: Theme.of(context).brightness == Brightness.light
                            ? LightColors.backgroundContainer
                            : DarkColors.backgroundContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(AppPaddings.tiny),
                          child: CommentComment(
                              comment: comment,
                              isThirdLayerOrMore: false,
                              isSecondLayerOrMore: false),
                        ),
                      ),
                    ),
                    comment.comments.isNotEmpty
                        ? SecondLayerComment(comments: comment.comments)
                        : Container(),
                  ],
                ))
            .toList());
  }
}
