import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/data/models/credit_source_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';

class SourceList extends StatelessWidget {
  const SourceList({Key? key}) : super(key: key);

  /// Calculates the percentage of each source item based on the total amount of credits
  List<double> calculateCreditSourcePercentage(CreditsSourceModel source) {
    List<double> percentages = List<double>.filled(source.items.length, 0, growable: false);
    int total = source.items.fold(0, (sum, item) => sum + item.amount);

    if (total == 0) return percentages; // Avoid division by zero

    for (int i = 0; i < source.items.length; i++) {
      percentages[i] = (source.items[i].amount / total) * 100;
    }

    return percentages;
  }

  @override
  Widget build(BuildContext context) {
    // Get the provider instance
    WalletSheetProvider walletSheetProvider = Provider.of<WalletSheetProvider>(context);
    
    // Safely fetch the creditsSource data, handling possible null values
    CreditsSourceModel? creditsSource = walletSheetProvider.wallet?.creditsSource;

    // If creditsSource is null, return an empty container or handle it accordingly
    if (creditsSource == null) {
      return Container(); // You can return an empty Container or display a message
    }

    // Calculate the width values for each source
    List<double> widthValues = calculateCreditSourcePercentage(creditsSource);

    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: creditsSource.items.length,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: SourceBar(
                label: creditsSource.items[index].label,
                amount: creditsSource.items[index].amount,
                width: widthValues[index] * 5 + 50, // Adjust this formula as needed
              ),
            );
          },
        ),
      ],
    );
  }
}
