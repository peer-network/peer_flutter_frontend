import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/balance_per_day.dart';
import 'package:peer_app/data/dummy_response/dummy_wallet.dart';
import 'package:peer_app/data/models/wallet_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/labels/exchange_rate.dart';

class ChartSection extends StatelessWidget {
  ChartSection({super.key});
  
  final tokensPerDay = WalletModel.fromJson(gregorDummyWallet).tokensPerDay ?? {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Adding ExchangeRate widget above the "Account Performance" text
        const ExchangeRate(),
        const SizedBox(height: AppPaddings.large),
        Text(
          "Account Performance",
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppPaddings.large),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.425,
          child: BalancePerDay(tokensPerDay: tokensPerDay),
        ),
      ],
    );
  }
}
