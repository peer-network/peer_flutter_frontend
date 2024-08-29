import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CommentCountComponent extends StatelessWidget {
  const CommentCountComponent({
    super.key,
    this.commentCount, // Changed to accept nullable num
    this.isSmallText = false,
  });

  final num? commentCount; // Made nullable

  final bool isSmallText;

  Widget buildCommentCount(num? commentCount, BuildContext context) {
    if (commentCount == null) {
      return Text("Comments", style: Theme.of(context).textTheme.titleLarge);
    } else if (commentCount > 1) {
      return Text("Comments...", style: Theme.of(context).textTheme.titleLarge);
    } else if (commentCount == 0) {
      return Text("Comments", style: Theme.of(context).textTheme.titleLarge);
    } else {
      return Text("Comment", style: Theme.of(context).textTheme.titleLarge);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(commentCount?.toString() ?? "0",
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: AppPaddings.small),
        isSmallText
            ? ImageIcon(
                IconLibrary.comment.icon,
                size: AppDimensions.iconSizeSmall,
              )
            : buildCommentCount(commentCount, context), // Pass nullable value
      ],
    );
  }
}
