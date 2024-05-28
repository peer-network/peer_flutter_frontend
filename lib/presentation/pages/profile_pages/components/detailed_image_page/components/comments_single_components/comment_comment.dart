import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/caspar_heart.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/comment_middle_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/like_button_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/user_image.dart';

/////////////////////////////////////////////////////////////
// comment_comment.dart

class CommentComment extends StatelessWidget {
  const CommentComment(
      {super.key,
      required this.comment,
      required this.isThirdLayerOrMore,
      required this.isSecondLayerOrMore,
      this.referenceName});

  final CommentModel comment;
  final bool isThirdLayerOrMore;
  final bool isSecondLayerOrMore;
  final String? referenceName;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        UserImage(imageUrl: comment.creator.imageUrl),
        Expanded(
          child: CommentAndHeartRow(
              comment: comment,
              isThirdLayerOrMore: isThirdLayerOrMore,
              isSecondLayerOrMore: isSecondLayerOrMore,
              referenceName: referenceName),
        ),
        // const Spacer(),
      ],
    );
  }
}

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
        LikeButtonComponent(comment: comment),
        CasparHeart(isLiked: comment.isLiked),
      ],
    );
  }
}
