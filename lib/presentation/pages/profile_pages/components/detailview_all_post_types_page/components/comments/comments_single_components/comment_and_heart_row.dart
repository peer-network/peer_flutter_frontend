import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_single_components/comment_middle_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_single_components/like_button_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentAndHeartRow extends StatelessWidget {
  const CommentAndHeartRow({
    super.key,
    required this.comment,
    required this.isThirdLayerOrMore,
    required this.isSecondLayerOrMore,
    required this.referenceName,
  });

  final CommentModel comment;
  final bool isThirdLayerOrMore;
  final bool isSecondLayerOrMore;
  final String? referenceName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          // 1: Expanded
          child: CommentMiddleSection(
            comment: comment,
            isThirdLayerOrMore: isThirdLayerOrMore,
            isSecondLayerOrMore: isSecondLayerOrMore,
            referenceName: referenceName,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: AppPaddings.small, left: AppPaddings.small),
          child: LikeCommentButtonComponent(
              isLiked: comment.isLiked ?? false, commentId: comment.id),
        ),
      ],
    );
  }
}
