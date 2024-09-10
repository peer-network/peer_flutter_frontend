import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class ORDivider extends StatelessWidget {
  const ORDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Theme.of(context).dividerColor,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPaddings.small),
          child: Text("OR"),
        ),
        Expanded(
          child: Divider(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ],
    );
  }
}
