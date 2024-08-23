import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/exchange_rate_label.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/line_chart.dart';

class ExchangeRate extends StatelessWidget {
  const ExchangeRate({super.key});

  @override
  Widget build(BuildContext context) {
    WalletSheetProvider walletSheetProvider =
        Provider.of<WalletSheetProvider>(context);
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: AppPaddings.large),
              child: Text('Exchange Rates',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
            )),
        const SizedBox(height: AppPaddings.small),
        ExchangeRateLabel(
            labelText:
                '1 Peer Token ≈ ${walletSheetProvider.wallet!.currencyExchange.creditValue.toString()}€'),
        const SizedBox(height: AppPaddings.small),
        ExchangeRateLabel(
            labelText:
                'Peer Token total = ${walletSheetProvider.formatDigits(walletSheetProvider.wallet!.currencyExchange.totalCreditsInSystem)}'),
        //const CustomLineChart(),
      ],
    );
  }
}