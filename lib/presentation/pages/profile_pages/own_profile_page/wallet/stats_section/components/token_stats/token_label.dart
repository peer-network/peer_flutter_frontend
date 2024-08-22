import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class TokenLabel extends StatelessWidget {
  final String value;
  final bool isPercentage;
  final bool isConversion;
  const TokenLabel(
      {Key? key,
      required this.value,
      required this.isPercentage,
      required this.isConversion})
      : super(key: key);

  int calculateGemToTokenConversion(int gemCount, double creditValue) {
    return (gemCount * creditValue).toInt();
  }

  @override
  Widget build(BuildContext context) {
    WalletSheetProvider walletSheetProvider =
        Provider.of<WalletSheetProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text((isPercentage) ? '$value%' : value,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        const SizedBox(width: AppPaddings.small),
        (isConversion)
            ? ImageIcon(IconLibrary.gem.icon,
                color: Theme.of(context).primaryIconTheme.color)
            : const SizedBox.shrink(),
        (isConversion)
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppPaddings.small),
                child: Text(
                    '~${calculateGemToTokenConversion(int.parse(value), walletSheetProvider.wallet!.currencyExchange.creditValue)}',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
              )
            : const SizedBox.shrink(),
        (isPercentage)
            ? const SizedBox.shrink()
            : ImageIcon(IconLibrary.peerSignet.icon,
                color: Theme.of(context).primaryIconTheme.color)
      ],
    );
  }
}
