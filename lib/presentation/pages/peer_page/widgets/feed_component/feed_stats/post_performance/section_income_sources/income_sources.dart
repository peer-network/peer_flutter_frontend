import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';

class IncomeSources extends StatelessWidget {

  final PostPerformanceModel postPerformance;

  const IncomeSources({
    Key? key,
    required this.postPerformance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Total Gems: ${postPerformance.gemsTotal}'),
        Text('Gems Today: ${postPerformance.gemsToday}'),
        Text('Gems All Time High: ${postPerformance.gemsAllTimeHigh}'),
        Text('Gems Likes: ${postPerformance.gemsLikes}'),
        Text('Gems Views: ${postPerformance.gemsViews}'),
        Text('Gems Shares: ${postPerformance.gemsShares}'),
      ],
    );
  }
}