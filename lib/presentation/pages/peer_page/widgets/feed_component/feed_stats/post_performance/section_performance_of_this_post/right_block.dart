import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class RightTopBlocks extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  const RightTopBlocks({
    super.key,
    required this.postPerformance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GiveItABetterName(
            title: "Total Gems earned",
            amount: postPerformance.gemsTotal.toDouble()),
        GiveItABetterName(
            title: "Gems earned Today",
            amount: postPerformance.gemsToday.toDouble()),
        GiveItABetterName(
            title: "Performance Highscore",
            amount: postPerformance.gemsAllTimeHigh.toDouble())
      ],
    );
  }
}

class GiveItABetterName extends StatelessWidget {
  const GiveItABetterName({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(amount.toString()),
              const SizedBox(width: 8),
              ImageIcon(IconLibrary.diamond.icon,
                  size: 16), // Diamond icon from IconLibrary
            ],
          ),
        ),
        Text(title),
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

