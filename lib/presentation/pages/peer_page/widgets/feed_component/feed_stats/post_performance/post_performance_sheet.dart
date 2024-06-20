import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TitleBar.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';

import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';

import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/left_block.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/right_block.dart';

import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance_content.dart';

class PostPerformanceSheet extends StatelessWidget {
  const PostPerformanceSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Performance"),
      ),
      body: Center(
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
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final double availableHeight = constraints.maxHeight;

              final double sectionHeight = availableHeight / 2;
              final double titleBarHeight = availableHeight / 12;

              return PostPerformanceContent(
                titleBarHeight: titleBarHeight,
                sectionHeight: sectionHeight,
                blockHeight: availableHeight - titleBarHeight,
              );
            },
          ),
        ),
      ),
    );
  }
}

// class PostPerformanceSheet extends StatelessWidget {
//   const PostPerformanceSheet({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Post Performance"),
//       ),
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Theme.of(context).brightness == Brightness.light
//                     ? LightColors.fadeDark
//                     : DarkColors.fadeDark,
//                 Theme.of(context).brightness == Brightness.light
//                     ? LightColors.fadeBright
//                     : DarkColors.fadeBright,
//               ],
//             ),
//             borderRadius: BorderRadius.only(
//               topLeft: AppBorders.defaultRadius.topLeft,
//               topRight: AppBorders.defaultRadius.topRight,
//             ),
//           ),
//           child: LayoutBuilder(
//             builder: (BuildContext context, BoxConstraints constraints) {
//               final double availableHeight = constraints.maxHeight;
//               final double titleBarHeight = availableHeight / 12;

//               return PostPerformanceContent(
//                 titleBarHeight: titleBarHeight,
//                 blockHeight: availableHeight - titleBarHeight,
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



