import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';

class TokenStats extends StatelessWidget {
  const TokenStats({super.key});

  @override
  Widget build(BuildContext context) {
    WalletSheetProvider walletSheetProvider =
        Provider.of<WalletSheetProvider>(context);
    return Column(
      children: [
        Text(
            walletSheetProvider
                .formatDigits(walletSheetProvider.wallet.totalCredits),
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: CustomColors.lightTextColor)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text('Credits in deiner Wallet',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: CustomColors.lightTextColor)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
              walletSheetProvider.formatDigits(
                  walletSheetProvider.wallet.creditsCollectedToday),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: CustomColors.lightTextColor)),
        ),
        Text('Credits heute gesammelt',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: CustomColors.lightTextColor)),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
                '${walletSheetProvider.wallet.percentageOfTotalTokens}%',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: CustomColors.lightTextColor))),
        Text('aller tokens gehören dir',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: CustomColors.lightTextColor)),
      ],
    );
  }
}
