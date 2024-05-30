import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/comment_content.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/comment_footer.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments_single_components/comment_header.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/detailed_post_page.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentMiddleSection extends StatelessWidget {
  const CommentMiddleSection(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // 4: CrossAxisAlignment
      children: [
        CommentHeader(user: comment.creator),
        CommentContent(
          comment: comment,
          isThirdLayerOrMore: isThirdLayerOrMore,
          isSecondLayerOrMore: isSecondLayerOrMore,
          referenceName: referenceName,
        ),
        CommentFooter(comment: comment),
        const SizedBox(height: AppPaddings.tiny),
      ],
    );
  }
}
