import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class LogoAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LogoAppbar({super.key, this.actions})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return BaseAppbar(
      leading: Padding(
        padding: const EdgeInsets.only(left: AppPaddings.medium),
        child: Image.asset(
          Config.secondaryLogo,
          height: Config.secondaryLogoHeight,
          color: Theme.of(context).appBarTheme.foregroundColor,
        ),
      ),
      actions: actions,
    );
  }
}
