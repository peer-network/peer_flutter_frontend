import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CommentCountComponent extends StatelessWidget {
  const CommentCountComponent({
    super.key,
    required this.commentCount,
  });

  final num? commentCount;

  final bool isSmallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(commentCount.toString() ?? "0",
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: AppPaddings.small),
        isSmallText
            ? ImageIcon(
                IconLibrary.comment.icon,
                size: AppDimensions.iconSizeSmall,
              )
            : Text("Kommentare", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
