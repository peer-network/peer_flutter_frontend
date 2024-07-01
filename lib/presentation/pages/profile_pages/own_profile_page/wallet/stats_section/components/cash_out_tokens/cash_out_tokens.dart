import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/cash_out_tokens/cash_out_tokens_bottom_sheet.dart';

class CashOutTokens extends StatelessWidget {
  const CashOutTokens({super.key});

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
          text: 'Tokens Auszahlen',
          onPressed: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const CashOutTokensBottomSheet();
              }),
        )
      ],
    );
  }
}
