import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';
import 'package:peer_app/data/models/post_model.dart';

class IncomeSources extends StatelessWidget {
  final PostModel postPerformance;

  const IncomeSources({
    Key? key,
    required this.postPerformance,
  }) : super(key: key);

  List<double> calculateGemPercentages(PostModel postPerformance) {
    List<double> percentages = List<double>.filled(4, 0, growable: false);
    List<int?> values = [
      postPerformance.gemsLikes,
      postPerformance.gemsViews,
      postPerformance.gemsShares,
      postPerformance.gemsComments
    ];
    
    int total = values.fold(0, (sum, value) => sum + (value ?? 0));

    if (total == 0) {
      return percentages;
    }

    for (int i = 0; i < values.length; i++) {
      percentages[i] = ((values[i] ?? 0) / total) * 100;
    }

    return percentages;
  }

  @override
  Widget build(BuildContext context) {
    List<double> widthValues = calculateGemPercentages(postPerformance);
    List<String> labels = ['Gems through Likes', 'Gems through Views', 'Gems through Shares', 'Gems through Comments'];
    List<int?> amounts = [
      postPerformance.gemsLikes,
      postPerformance.gemsViews,
      postPerformance.gemsShares,
      postPerformance.gemsComments
    ];

    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: labels.length,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: SourceBar(
                label: labels[index],
                amount: amounts[index] ?? 0,
                width: widthValues[index] * 5 + 50,
              ),
            );
          },
        ),
      ],
    );
  }
}
