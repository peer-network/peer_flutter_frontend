import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/token_stats/token_label.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';

class TokenStats extends StatelessWidget {
  const TokenStats({super.key});

  @override
  Widget build(BuildContext context) {
    WalletSheetProvider walletSheetProvider =
        Provider.of<WalletSheetProvider>(context);
    return Column(
      children: [
        TokenLabel(
            isConversion: false,
            isPercentage: false,
            value: walletSheetProvider
                .formatDigits(walletSheetProvider.wallet.totalCredits)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
          child: Text('Your current Token Count',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.secondary)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
          child: TokenLabel(
              isConversion: true,
              isPercentage: false,
              value: walletSheetProvider.formatDigits(
                  walletSheetProvider.wallet.creditsCollectedToday)),
        ),
        Text('Gems earned Today',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: TokenLabel(
                isConversion: false,
                isPercentage: true,
                value: walletSheetProvider.wallet.percentageOfTotalTokens
                    .toString())),
        Text('of all Peer Tokens are currently yours',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
      ],
    );
  }
}
