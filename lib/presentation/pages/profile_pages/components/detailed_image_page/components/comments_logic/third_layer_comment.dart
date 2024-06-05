import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/comment_comment.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ThirdLayerComment extends StatelessWidget {
  const ThirdLayerComment({super.key, required this.comments});

  final List<CommentModel> comments;

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
            .map((CommentModel comment) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPaddings.tiny),
                      child: Container(
                        color: Theme.of(context).brightness == Brightness.light
                            ? LightColors.backgroundContainer
                            : DarkColors.backgroundContainer,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 38.0,
                              top: AppPaddings.tiny,
                              bottom: AppPaddings.tiny),
                          child: CommentComment(
                              comment: comment,
                              isThirdLayerOrMore: true,
                              isSecondLayerOrMore: true,
                              referenceName:
                                  comment.creator.username ?? "HERE"),
                        ),
                      ),
                    ),
                    comment.comments.isNotEmpty
                        ? ThirdLayerComment(comments: comment.comments)
                        : Container(),
                  ],
                ))
            .toList());
  }
}
