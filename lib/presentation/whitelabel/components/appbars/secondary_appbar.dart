import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';
import 'package:peer_app/presentation/whitelabel/text_constants.dart';

class SecondaryAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SecondaryAppbar({
    super.key,
    required this.leftText,
    required this.mainText,
    required this.rightText,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String leftText;
  final String mainText;
  final String rightText;

  @override
  final Size preferredSize;

  @override
  State<SecondaryAppbar> createState() => _SecondaryAppbarState();
}

class _SecondaryAppbarState extends State<SecondaryAppbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseAppbar(actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        widget.leftText,
                        style: headlineSmallTextStyle(
                            CustomColors.primaryTextColor),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      widget.mainText,
                      style: headlineMediumTextStyle(
                          CustomColors.primaryTextColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        widget.rightText,
                        style: headlineSmallTextStyle(
                            CustomColors.tertiaryTextColor),
                      )),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
