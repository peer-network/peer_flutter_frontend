import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/performance_history.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TopBar.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';

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
              //final double topBarHeight = 60; // Height of the TopBar
              final double availableHeight = constraints.maxHeight;
              final double blockHeight = availableHeight;// / 2; // Each block takes 1/2 of the available height
              final double titleBarHeight = availableHeight / 12; // TODO remove titleBarHeight from the post_performance_sheet and leave its definition only in the TopBar.dart

              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: titleBarHeight, 
                            child: TopBar(
                              title: "Perfomance of this Post"
                            )
                          ),
                          Container(
                            height: blockHeight, // Use calculated height
                            child: PerformanceOfThisPost(),
                          ),
                          Container(
                            height: titleBarHeight, 
                            child: TopBar(
                              title: "History of post performance"
                            )
                          ),
                          Container(
                            height: blockHeight, // Use calculated height
                            child: PerformanceHistory(),
                          ),
                          Container(
                            height: titleBarHeight, 
                            child: TopBar(
                              title: "Income sources"
                            )
                          ),
                          Container(
                            height: blockHeight, // Use calculated height
                            child: IncomeSources(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}