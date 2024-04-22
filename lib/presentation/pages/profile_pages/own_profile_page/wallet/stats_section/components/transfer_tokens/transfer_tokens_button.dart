import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/cash_out_tokens/cash_out_tokens_bottom_sheet.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

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
