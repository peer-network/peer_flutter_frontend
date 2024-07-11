import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/token_actions.dart';
import 'package:peer_app/presentation/whitelabel/config.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/gem_icon.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/token_stats/token_stats.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/drag_handle.dart';

class StatsSection extends StatelessWidget {
  final double dragHandleWidth;
  const StatsSection({super.key, required this.dragHandleWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DragHandle(width: dragHandleWidth),
        const SizedBox(height: AppPaddings.large),
        const GemIcon(assetPath: Config.gemIcon),
        const SizedBox(height: AppPaddings.medium),
        const TokenStats(),
        const TokenActions()
      ],
    );
  }
}
