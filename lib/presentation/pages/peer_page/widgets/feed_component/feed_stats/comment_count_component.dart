import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CommentCountComponent extends StatelessWidget {
  const CommentCountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("12", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: AppPaddings.small),
        Text("Kommentare", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
