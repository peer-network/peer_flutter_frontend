import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_single_components/comment_and_heart_row.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_single_components/user_image.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

/////////////////////////////////////////////////////////////
// comment_comment.dart

class CommentComment extends StatelessWidget {
  const CommentComment({
    super.key,
    required this.comment,
    required this.isThirdLayerOrMore,
    required this.isSecondLayerOrMore,
    this.referenceName,
  });

  final PostCommentModel comment;
  final bool isThirdLayerOrMore;
  final bool isSecondLayerOrMore;
  final String? referenceName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSecondLayerOrMore
          ? const EdgeInsets.only(left: AppPaddings.extraLargePlus)
          : const EdgeInsets.only(left: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserImage(imageUrl: comment.user.img),
          Expanded(
            child: CommentAndHeartRow(
              comment: comment,
              isThirdLayerOrMore: isThirdLayerOrMore,
              isSecondLayerOrMore: isSecondLayerOrMore,
              referenceName:
                  isThirdLayerOrMore ? (referenceName ?? 'NULL in json') : null,
            ),
          ),
        ],
      ),
    );
  }
}
