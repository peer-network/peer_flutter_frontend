import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TitleBar.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';



import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class RightTopBlocks extends StatelessWidget {
  final double height;
  final double width;
  final PostPerformanceModel postPerformance;

  RightTopBlocks({
    required this.width,
    required this.height,
    required this.postPerformance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height / 3,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(postPerformance.gemsTotal.toString()),
                  SizedBox(width: 8),
                  //Icon(IconLibrary.diamond, size: 16), // Diamond icon from IconLibrary
                ],
              ),
              Text('Total Gems earned'),
            ],
          ),
        ),
        Container(
          height: height / 3,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(postPerformance.gemsToday.toString()),
                  SizedBox(width: 8),
                  //Icon(IconLibrary.diamond, size: 16), // Diamond icon from IconLibrary
                ],
              ),
              Text('Gems earned Today'),
            ],
          ),
        ),
        Container(
          height: height / 3,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(postPerformance.gemsAllTimeHigh.toString()),
                  SizedBox(width: 8),
                  //AssetImage(IconLibrary.diamond.icon, size: 16), // Diamond icon from IconLibrary
                ],
              ),
              Text('Performance Highscore'),
            ],
          ),
        ),
      ],
    );
  }
}


// class RightTopBlocks extends StatelessWidget {
//   final double height;
//   final double width;

//   RightTopBlocks({required this.width, required this.height});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: height / 3,
//           width: width,
//           color: Colors.red,
//         ),
//         Container(
//           height: height / 3,
//           width: width,
//           color: Colors.green,
//         ),
//         Container(
//           height: height / 3,
//           width: width,
//           color: Colors.yellow,
//         ),
//       ],
//     );
//   }
// }

