import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/caspar_heart.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/comment_and_heart_row.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/comment_middle_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/like_button_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/user_image.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

/////////////////////////////////////////////////////////////
// comment_comment.dart

class CommentComment extends StatelessWidget {
  const CommentComment({
    super.key,
    required this.comment,
    required this.isThirdLayerOrMore,
    required this.isSecondLayerOrMore,
  });

  final CommentModel comment;
  final bool isThirdLayerOrMore;
  final bool isSecondLayerOrMore;

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
          UserImage(imageUrl: comment.creator.imageUrl),
          Expanded(
            child: CommentAndHeartRow(
                comment: comment,
                isThirdLayerOrMore: isThirdLayerOrMore,
                isSecondLayerOrMore: isSecondLayerOrMore,
                referenceName:
                    isThirdLayerOrMore ? comment.creator.name : null),
          ),
        ],
      ),
    );
  }
}
