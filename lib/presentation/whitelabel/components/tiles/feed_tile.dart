import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FeedTile extends StatelessWidget {
  const FeedTile({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPaddings.small),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: AppBorders.defaultRadius,
        ),
        child: child,
      ),
    );
  }
}
