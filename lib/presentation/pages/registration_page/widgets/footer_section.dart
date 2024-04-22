import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';

class FooterSectionRegistrieren extends StatelessWidget {
  const FooterSectionRegistrieren({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinkButtonComponent(
            text: "The PEER principle",
            onPressed: () {},
            textColor: Theme.of(context).colorScheme.surface),
      ],
    );
  }
}
