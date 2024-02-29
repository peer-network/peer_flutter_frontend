import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        const Divider(
          height:
              2, // The divider's vertical space it occupies in the parent. Includes the divider's thickness.
          color: CustomColors.cardBorderColor, // Color of the divider.
          indent: AppPaddings
              .medium, // Empty space to the leading edge of the divider.
          endIndent: AppPaddings
              .medium, // Empty space to the trailing edge of the divider.
        )
      ],
    );
  }
}
