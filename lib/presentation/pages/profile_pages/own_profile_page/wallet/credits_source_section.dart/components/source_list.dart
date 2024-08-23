import 'package:flutter/material.dart';
import 'package:peer_app/data/models/credit_source_model.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';

class SourceList extends StatelessWidget {
  const SourceList({
    Key? key,
  }) : super(key: key);

  //TODO: save in var which updates on every change => notifyListeners
  /// calculates the percentage of each source item based on the total amount of credits
  /// based on the percentage, the width of the bar is calculated
  List<double> calculateCreditSourcePercentage(CreditsSourceModel source) {
    List<double> percentages = List<double>.filled(4, 0, growable: false);
    List<int> values = List<int>.filled(4, 0, growable: false);
    int total = 0;

    // total amount of credits
    for (var i = 0; i < source.items.length; i++) {
      total += source.items[i].amount;
    }

    // amount of each source item
    for (var i = 0; i < source.items.length; i++) {
      if (i == 0) {
        values[0] = source.items[i].amount;
      } else if (i == 1) {
        values[1] = source.items[i].amount;
      } else if (i == 2) {
        values[2] = source.items[i].amount;
      } else if (i == 3) {
        values[3] = source.items[i].amount;
      }
    }

    // percentage of each source item
    percentages[0] = (values[0] / total) * 100;
    percentages[1] = (values[1] / total) * 100;
    percentages[2] = (values[2] / total) * 100;
    percentages[3] = (values[3] / total) * 100;

    return percentages;
  }

  @override
  Widget build(BuildContext context) {
    WalletSheetProvider walletSheetProvider =
        Provider.of<WalletSheetProvider>(context);
    List<double> widthValues = calculateCreditSourcePercentage(
        walletSheetProvider.wallet!.creditsSource);
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: walletSheetProvider.wallet!.creditsSource.items.length,
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.centerLeft,
            child: SourceBar(
                label: walletSheetProvider
                    .wallet!.creditsSource.items[index].label,
                amount: walletSheetProvider
                    .wallet!.creditsSource.items[index].amount,
                // TODO: Idk this ain't it tbh there has to be another formula
                width: widthValues[index] * 5 + 50),
          );
        });
  }
}
