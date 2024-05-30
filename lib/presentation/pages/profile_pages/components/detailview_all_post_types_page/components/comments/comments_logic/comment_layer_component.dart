import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_single_components/comment_comment.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentLayerComponent extends StatelessWidget {
  const CommentLayerComponent({
    super.key,
    required this.comment,
    this.nextLayer,
    this.isThirdLayerOrMore = false,
    this.isSecondLayerOrMore = false,
  });

  final CommentModel comment;
  final Widget? nextLayer;
  final bool isThirdLayerOrMore;
  final bool isSecondLayerOrMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: AppPaddings.tiny),
          margin: const EdgeInsets.only(top: AppPaddings.tiny),
          color: Theme.of(context).brightness == Brightness.light
              ? LightColors.backgroundContainer
              : DarkColors.backgroundContainer,
          child: CommentComment(
              comment: comment,
              isThirdLayerOrMore: isThirdLayerOrMore,
              isSecondLayerOrMore: isSecondLayerOrMore),
        ),
        nextLayer ?? Container()
      ],
    );
  }
}
