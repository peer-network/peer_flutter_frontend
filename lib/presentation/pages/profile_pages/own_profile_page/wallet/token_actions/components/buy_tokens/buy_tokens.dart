import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/token_actions/components/withdraw_tokens/withdraw_tokens_bottom_sheet.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';

class BuyTokensButton extends StatelessWidget {
  const BuyTokensButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppPaddings.medium),
        CustomButton(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.4,
          isIcon: false,
          overrideDefaultColor: false,
          text: 'Buy Tokens',
          onPressed: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const WithdrawTokensBottomSheet();
              }),
        )
      ],
    );
  }
}
