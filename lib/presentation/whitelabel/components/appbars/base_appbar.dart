import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class BaseAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;

  const BaseAppbar({super.key, this.title, this.actions, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      automaticallyImplyLeading: false,
      leading: leading,
      title: title,
      actions: actions,
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }

  @override
  Size get preferredSize => AppDimensions.appbarHeightSize;
}
