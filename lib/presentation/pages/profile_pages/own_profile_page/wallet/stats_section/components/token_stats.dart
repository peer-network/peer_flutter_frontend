import 'package:flutter/material.dart';
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
        Text(
            walletSheetProvider
                .formatDigits(walletSheetProvider.wallet.totalCredits),
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
          child: Text('Credits in deiner Wallet',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.secondary)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
          child: Text(
              walletSheetProvider.formatDigits(
                  walletSheetProvider.wallet.creditsCollectedToday),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Theme.of(context).colorScheme.secondary)),
        ),
        Text('Credits heute gesammelt',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: Text("gibt's gerade net",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).colorScheme.secondary))),
        Text('aller tokens gehören dir',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
      ],
    );
  }
}
