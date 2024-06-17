import 'package:flutter/material.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
//import 'package:peer_app/lib/data/provider/post_provider.dart';


import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/data/provider/wallet_sheet_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/stats_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/credits_source_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/chart_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/drag_handle.dart';

class PostPerformanceScrollSheet extends StatelessWidget {
  final double dragHandleWidth;

  const PostPerformanceScrollSheet({
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
          // return ValueListenableBuilder<WalletState>(
          //   valueListenable: ValueNotifier<WalletState>(
          //       Provider.of<WalletSheetProvider>(context).state),
          return ValueListenableBuilder(
            valueListenable: ValueNotifier(
                Provider.of<PostProvider>(context)),
            builder: (context, state, child) {
              return NotificationListener<DraggableScrollableNotification>(
                onNotification: (notification) {
                  // onNotification => get wallet data
                  //TODO: get new data when this is fired
                  return true;
                },
                child: Container(
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
                //   child: CustomScrollView(
                //     controller: scrollController,
                //     slivers: [
                //         SliverList(
                //         delegate: SliverChildListDelegate(
                //           (state ==
                //                     PostPerformanceState.none ||
                //                 state == PostPerformanceState.loading)
                //             ? [
                //                 DragHandle(width: dragHandleWidth),
                //               ]
                //             : [
                //                 StatsSection(dragHandleWidth: dragHandleWidth),
                //                 PerformanceOfThisPost(),
                //                 PerformanceHistory(),
                //                 IncomeSources(),

                //               ]
                //               ),
                //       ),
                //     ],
                //   ),
                // ),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              //DragHandle(width: dragHandleWidth), // Assuming dragHandleWidth is 40.0
                              //StatsSection(dragHandleWidth: dragHandleWidth),
                              PerformanceOfThisPost(),
                              PerformanceHistory(),
                              IncomeSources(),
                            ],
                          ),
                        ),
                      ),
              ),);
            },
          );
        });
}}

