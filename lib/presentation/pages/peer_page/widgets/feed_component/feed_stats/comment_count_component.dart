import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentCountComponent extends StatelessWidget {
  const CommentCountComponent({
    super.key,
    required this.commentCount,
  });

  final num? commentCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(commentCount.toString() ?? "0",
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: AppPaddings.small),
        Text("Kommentare", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
