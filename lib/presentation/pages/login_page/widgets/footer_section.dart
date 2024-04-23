import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FooterSectionLogin extends StatelessWidget {
  const FooterSectionLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinkButtonComponent(
            text: "forgot password?",
            onPressed: () {},
            textColor: Theme.of(context).brightness == Brightness.light
                ? LightColors.textBrightSubtle
                : DarkColors.textBrightSubtle),
        const SizedBox(height: AppPaddings.medium),
        LinkButtonComponent(
            text: "The PEER principle",
            onPressed: () {},
            textColor: Theme.of(context).colorScheme.tertiary)
      ],
    );
  }
}
