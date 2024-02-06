import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';

class FooterSectionLogin extends StatelessWidget {
  const FooterSectionLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinkButtonComponent(
            text: "forgot password?",
            onPressed: () {},
            textColor: CustomColors.secondaryTextColor),
        const SizedBox(height: 10),
        LinkButtonComponent(
            text: "The PEER principle",
            onPressed: () {},
            textColor: CustomColors.secondaryTextColor)
      ],
    );
  }
}
