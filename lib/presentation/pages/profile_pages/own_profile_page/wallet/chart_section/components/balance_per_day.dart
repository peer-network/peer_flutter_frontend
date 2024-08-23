import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/line_chart.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';

class BalancePerDay extends StatelessWidget {
  const BalancePerDay({super.key});

  @override
  Widget build(BuildContext context) {
    final walletSheetProvider = Provider.of<WalletSheetProvider>(context);

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: AppPaddings.large),
            child: Text(
              'Balance per day',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ),
        const SizedBox(height: AppPaddings.small),
        Padding(
          padding: const EdgeInsets.only(left: AppPaddings.large),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppPaddings.small),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? LightColors.textBright
                    : DarkColors.textPrimary,
                borderRadius: AppBorders.defaultRadius,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '1 Credit = ${walletSheetProvider.wallet!.currencyExchange.creditValue}€',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: AppPaddings.large, top: AppPaddings.small),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppPaddings.small),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? LightColors.textBright
                    : DarkColors.textPrimary,
                borderRadius: AppBorders.defaultRadius,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Gesamtzahl Credits = ${walletSheetProvider.formatDigits(walletSheetProvider.wallet!.currencyExchange.totalCreditsInSystem)}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
        ),
        const CustomLineChart(),
      ],
    );
  }
}
