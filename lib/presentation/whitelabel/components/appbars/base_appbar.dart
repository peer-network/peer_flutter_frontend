import 'package:flutter/material.dart';

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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
