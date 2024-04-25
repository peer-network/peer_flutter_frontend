import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class SecondaryAppbar extends StatefulWidget implements PreferredSizeWidget {
  // This Appbar has a backbutton ("zurück") and a title and can have actions
  const SecondaryAppbar({
    super.key,
    required this.title,
    this.actions = const [],
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String title;
  final List<Widget> actions;

  @override
  final Size preferredSize;

  @override
  State<SecondaryAppbar> createState() => _SecondaryAppbarState();
}

class _SecondaryAppbarState extends State<SecondaryAppbar> {
  @override
  Widget build(BuildContext context) {
    return BaseAppbar(
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(AppPaddings.medium),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Zurück',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ),
      actions: widget.actions.map((action) {
        return Padding(
          padding: const EdgeInsets.all(AppPaddings.medium),
          child: action,
        );
      }).toList(),
    );
  }
}
