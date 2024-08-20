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
    
    // Function to display error message if data is null
    Widget _buildErrorText(String errorText) {
      return Text(
        errorText,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: Colors.red),
      );
    }

    return Column(
      children: [
        // Handling nullable totalCredits
        walletSheetProvider.wallet?.totalCredits != null
            ? Text(
                walletSheetProvider.formatDigits(
                  walletSheetProvider.wallet!.totalCredits,
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              )
            : _buildErrorText('Error: totalCredits is null'),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
          child: Text(
            'Credits in deiner Wallet',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ),

        // Handling nullable creditsCollectedToday
        walletSheetProvider.wallet?.creditsCollectedToday != null
            ? Text(
                walletSheetProvider.formatDigits(
                  walletSheetProvider.wallet!.creditsCollectedToday,
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              )
            : _buildErrorText('Error: creditsCollectedToday is null'),

        Text(
          'Credits heute gesammelt',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.secondary),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
          child: Text(
            "gibt's gerade net",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
        Text(
          'aller tokens gehören dir',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
      ],
    );
  }
}
