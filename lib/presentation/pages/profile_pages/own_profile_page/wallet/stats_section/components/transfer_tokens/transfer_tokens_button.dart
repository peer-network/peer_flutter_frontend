import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';

class TransferTokensButton extends StatelessWidget {
  const TransferTokensButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppPaddings.medium),
        CustomButton(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.4,
          isIcon: false,
          text: 'Tokens Überweisen',
          onPressed: () => Navigator.of(context).push(RecipientListPageRoute()),
        )
      ],
    );
  }
}
