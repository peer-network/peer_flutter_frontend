import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentStatsComponent extends StatelessWidget {
  const CommentStatsComponent({super.key, required this.comment});

  final CommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: AppPaddings.small + AppDimensions.avatarSize,
        ),
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2.4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("14 min", style: Theme.of(context).textTheme.bodySmall),
              Text("12 Likes", style: Theme.of(context).textTheme.bodySmall),
              Text("Antworten", style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        SizedBox(
          width: SizeType.medium.iconSize(context) + AppPaddings.small,
        ),
      ],
    );
  }
}
