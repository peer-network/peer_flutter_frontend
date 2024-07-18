import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/stats_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/credits_source_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/chart_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/drag_handle.dart';

class WalletScrollSheet extends StatelessWidget {
  final double dragHandleWidth;

  const WalletScrollSheet({
    super.key,
    required this.dragHandleWidth,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        snap: true,
        snapAnimationDuration: Durations.short4,
        initialChildSize:
            0.1, // starting size as a fraction of the screen height
        minChildSize: 0.1, // minimum size as a fraction of the screen height
        maxChildSize: 1.0, // maximum size as a fraction of the screen height
        builder: (BuildContext context, ScrollController scrollController) {
          return Consumer<WalletSheetProvider>(
            builder: (context, walletProvider, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).brightness == Brightness.light
                          ? LightColors.fadeDark
                          : DarkColors.fadeDark,
                      Theme.of(context).brightness == Brightness.light
                          ? LightColors.fadeBright
                          : DarkColors.fadeBright,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: AppBorders.defaultRadius.topLeft,
                    topRight: AppBorders.defaultRadius.topRight,
                  ),
                  color: Theme.of(context).brightness == Brightness.light
                      ? LightColors.textCompany
                      : DarkColors.textCompany,
                ),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate((walletProvider.state ==
                                  WalletState.none ||
                              walletProvider.state == WalletState.loading ||
                              walletProvider.state == WalletState.error)
                          ? [
                              DragHandle(width: dragHandleWidth),
                            ]
                          : [
                              StatsSection(dragHandleWidth: dragHandleWidth),
                              const ChartSection(),
                              const CreditsSourceSection()
                            ]),
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
