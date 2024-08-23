import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/token_actions/components/buy_tokens/buy_tokens.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/token_actions/components/transfer_tokens/transfer_tokens_button.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/token_actions/components/withdraw_tokens/withdraw_tokens_button.dart';

class TokenActions extends StatelessWidget {
  const TokenActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TransferTokensButton()]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [WithdrawTokensButton(), BuyTokensButton()],
      )
    ]);
  }
}
