import 'package:flutter/material.dart';
import 'package:peer_app/data/models/wallet_model/wallet_model.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/components/TitleBar.dart';
import 'package:peer_app/data/models/post_performance_model/post_preformance_model.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_bar.dart';

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

class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
    required this.titleBarHeight,
    required this.blockHeight,
    required this.sectionHeight,
  }) : super(key: key);

  final double titleBarHeight;
  final double blockHeight;
  final double sectionHeight;

  @override
  Widget build(BuildContext context) {
    // Example instance of PostPerformanceModel
    final postPerformance = PostPerformanceModel(
      postId: 1,
      userId: 1,
      imageUrl: '/home/gregory/Documents/PEER/flutter_app-1/assets/images/empty_image.png',
      createdAt: DateTime(2024, 6, 1),
      updatedAt: DateTime.now(),
      gemsTotal: 1000,
      gemsToday: 50,
      gemsAllTimeHigh: 1500,
      gemsLikes: 300,
      gemsViews: 500,
      gemsShares: 200,
    );

    return Column(
      children: [
        //in order to adequately see the widgets you need to comment one of them  
        Container(
          height: titleBarHeight,
          child: 
          TitleBar(title: "Performance of this Post"),
        ),
        Expanded(
          child: PerformanceOfThisPost(postPerformance : postPerformance),
        ),
        Container(
          height: titleBarHeight,
          child: TitleBar(title: "Performance History"),
        ),
        Expanded(
          child: PerformanceHistory(postPerformance: postPerformance),
        ),
        Container(
          height: titleBarHeight,
          child: TitleBar(title: "Income Sources"),
        ),
        Expanded(
          child: IncomeSources(postPerformance: postPerformance),
        ),
      ],
    );
  }
}

class PerformanceOfThisPost extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  PerformanceOfThisPost({required this.postPerformance});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;
        final blockWidth = maxWidth / 2;

        return Row(
          children: [
            Expanded(
              child: LeftBlock(imageUrl: postPerformance.imageUrl),
            ),
            RightTopBlocks(
              width: blockWidth,
              height: maxHeight,
              postPerformance: postPerformance,
            ),
          ],
        );
      },
    );
  }
}


// class PerformanceOfThisPost extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           final maxHeight = constraints.maxHeight;
//           final maxWidth = constraints.maxWidth;
//           final blockWidth = maxWidth / 2;

//           return Row(
//             children: [
//               Expanded(
//                 child: LeftBlock(),
//               ),
//               RightTopBlocks(
//                 width: blockWidth,
//                 height: maxHeight,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

class LeftBlock extends StatelessWidget {
  final String imageUrl;

  const LeftBlock({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Container(
          width: width,
          height: height,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Text('Image not available'));
            },
          ),
        );
      },
    );
  }
}


// class LeftBlock extends StatelessWidget {
//   const LeftBlock({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         double width = constraints.maxWidth;
//         double height = constraints.maxHeight;

//         return Container(
//           width: width,
//           height: height,
//           color: Colors.blue,
//         );
//       },
//     );
//   }
// }

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
              Text(postPerformance.gemsTotal.toString()),
              Text('Total Gems'),
            ],
          ),
        ),
        Container(
          height: height / 3,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(postPerformance.gemsToday.toString()),
              Text('Gems Today'),
            ],
          ),
        ),
        Container(
          height: height / 3,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(postPerformance.gemsAllTimeHigh.toString()),
              Text('All Time High'),
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

class PerformanceHistory extends StatefulWidget {
  final PostPerformanceModel postPerformance;

  const PerformanceHistory({Key? key, required this.postPerformance}) : super(key: key);

  @override
  State<PerformanceHistory> createState() => _PerformanceHistoryState();
}

class _PerformanceHistoryState extends State<PerformanceHistory> {
  List<Color> gradientColors = const [
    Color.fromARGB(115, 175, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
  ];

  List<FlSpot> generateSpots(PostPerformanceModel postPerformance) {
    final DateTime? createdAt = postPerformance.createdAt;
    final DateTime? updatedAt = postPerformance.updatedAt;
    final gemsTotal = postPerformance.gemsTotal;

    if (createdAt == null || updatedAt == null) {
      return [FlSpot(0, 0)];
    }

    final totalDays = updatedAt.difference(createdAt).inDays.toDouble();

    // Generate spots (in a real scenario, you would populate this with actual data points)
    List<FlSpot> spots = [
      FlSpot(0, 0),
      FlSpot(totalDays, gemsTotal.toDouble()),
    ];

    return spots;
  }

  @override
  Widget build(BuildContext context) {
    final spots = generateSpots(widget.postPerformance);
    final createdAt = widget.postPerformance.createdAt;
    final updatedAt = widget.postPerformance.updatedAt;

    if (createdAt == null || updatedAt == null) {
      return Center(child: Text('Invalid date range'));
    }

    final totalDays = updatedAt.difference(createdAt).inDays.toDouble();

    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: false,
                  drawVerticalLine: false,
                  horizontalInterval: 1,
                  verticalInterval: 1,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      interval: totalDays / 2,
                      getTitlesWidget: (value, meta) => bottomTitleWidgets(value, meta, widget.postPerformance),
                    ),
                  ),
                  leftTitles: AxisTitles(
                    axisNameWidget: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Text('Wert', style: Theme.of(context).textTheme.bodyMedium!)),
                    sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: leftTitleWidgets,
                        reservedSize: 26,
                        interval: 1),
                  ),
                ),
                borderData: FlBorderData(
                    show: true,
                    border: const Border(
                      left: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      right: BorderSide.none,
                      top: BorderSide.none,
                    )),
                minX: 0,
                maxX: totalDays,
                minY: 0,
                maxY: widget.postPerformance.gemsTotal.toDouble(),
                lineBarsData: [
                  LineChartBarData(
                    spots: spots,
                    isCurved: false,
                    gradient: LinearGradient(
                      colors: gradientColors,
                    ),
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(
                      show: false,
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                          stops: const [0.2, 1.0], colors: gradientColors),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta, PostPerformanceModel postPerformance) {
    final createdAt = postPerformance.createdAt;

    if (createdAt == null) {
      return const Text('');
    }

    final DateTime date = createdAt.add(Duration(days: value.toInt()));
    final String formattedDate = "${date.day}.${date.month}.${date.year}";

    TextStyle style = TextStyle(
      color: Theme.of(context).brightness == Brightness.light
          ? LightColors.textBright
          : DarkColors.textPrimary,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(formattedDate, style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = TextStyle(
      color: Theme.of(context).brightness == Brightness.light
          ? LightColors.textBright
          : DarkColors.textPrimary,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '5';
        break;
      case 3:
        text = '20';
        break;
      case 5:
        text = '100';
        break;
      default:
        return const Text('');
    }

    return Transform.rotate(
        angle: -pi / 2,
        child: Text(text, style: style, textAlign: TextAlign.left));
  }
}


// class PerformanceHistory extends StatefulWidget {
//   const PerformanceHistory({super.key});

//   @override
//   State<PerformanceHistory> createState() => _PerformanceHistoryState();
// }

// class _PerformanceHistoryState extends State<PerformanceHistory> {
//   List<Color> gradientColors = const [
//     Color.fromARGB(115, 175, 255, 255),
//     Color.fromARGB(255, 255, 255, 255),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         AspectRatio(
//           aspectRatio: 1.70,
//           child: Padding(
//             padding: const EdgeInsets.only(
//               right: 18,
//               left: 12,
//               top: 24,
//               bottom: 12,
//             ),
//             child: LineChart(
//               mainData(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget bottomTitleWidgets(double value, TitleMeta meta) {
//     TextStyle style = TextStyle(
//       color: Theme.of(context).brightness == Brightness.light
//           ? LightColors.textBright
//           : DarkColors.textPrimary,
//     );
//     Widget text;
//     switch (value.toInt()) {
//       case 1:
//         text = Padding(
//           padding: EdgeInsets.only(left: 8.0),
//           child: Text('25.02.02023', style: style),
//         );
//         break;
//       case 10:
//         text = Text('15.03.2023', style: style);
//         break;
//       default:
//         text = Text('', style: style);
//         break;
//     }

//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       child: text,
//     );
//   }

//   Widget leftTitleWidgets(double value, TitleMeta meta) {
//     TextStyle style = TextStyle(
//       color: Theme.of(context).brightness == Brightness.light
//           ? LightColors.textBright
//           : DarkColors.textPrimary,
//     );
//     String text;
//     switch (value.toInt()) {
//       case 1:
//         text = '5';
//         break;
//       case 3:
//         text = '20';
//         break;
//       case 5:
//         text = '100';
//         break;
//       default:
//         return Text('');
//     }

//     return Transform.rotate(
//         angle: -pi / 2,
//         child: Text(text, style: style, textAlign: TextAlign.left));
//   }

//   LineChartData mainData() {
//     return LineChartData(
//       gridData: FlGridData(
//         show: false,
//         drawVerticalLine: false,
//         horizontalInterval: 1,
//         verticalInterval: 1,
//       ),
//       titlesData: FlTitlesData(
//         show: true,
//         rightTitles: const AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         topTitles: const AxisTitles(
//           sideTitles: SideTitles(showTitles: false),
//         ),
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             reservedSize: 30,
//             interval: 1,
//             getTitlesWidget: bottomTitleWidgets,
//           ),
//         ),
//         leftTitles: AxisTitles(
//           axisNameWidget: Padding(
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.08),
//               child:
//                   Text('Wert', style: Theme.of(context).textTheme.bodyMedium!)),
//           sideTitles: SideTitles(
//               showTitles: true,
//               getTitlesWidget: leftTitleWidgets,
//               reservedSize: 26,
//               interval: 1),
//         ),
//       ),
//       borderData: FlBorderData(
//           show: true,
//           border: const Border(
//             left: BorderSide(
//               color: Colors.grey,
//               width: 1,
//             ),
//             bottom: BorderSide(
//               color: Colors.grey,
//               width: 1,
//             ),
//             right: BorderSide.none,
//             top: BorderSide.none,
//           )),
//       minX: 0,
//       maxX: 11,
//       minY: 0,
//       maxY: 6,
//       lineBarsData: [
//         LineChartBarData(
//           spots: const [
//             FlSpot(0, 3),
//             FlSpot(2.6, 2),
//             FlSpot(4.9, 5),
//             FlSpot(6.8, 3.1),
//             FlSpot(8, 4),
//             FlSpot(9.5, 3),
//             FlSpot(11, 4),
//           ],
//           isCurved: false,
//           gradient: LinearGradient(
//             colors: gradientColors,
//           ),
//           barWidth: 0,
//           isStrokeCapRound: true,
//           dotData: const FlDotData(
//             show: false,
//           ),
//           belowBarData: BarAreaData(
//             show: true,
//             gradient:
//                 LinearGradient(stops: const [0.2, 1.0], colors: gradientColors),
//           ),
//         ),
//       ],
//     );
//   }
// }

class IncomeSources extends StatelessWidget {
  final PostPerformanceModel postPerformance;

  const IncomeSources({
    Key? key,
    required this.postPerformance,
  }) : super(key: key);

  /// calculates the percentage of each source item based on the total amount of gems
  List<double> calculateGemPercentages(PostPerformanceModel postPerformance) {
    List<double> percentages = List<double>.filled(3, 0, growable: false);
    List<int> values = [
      postPerformance.gemsLikes,
      postPerformance.gemsViews,
      postPerformance.gemsShares
    ];
    int total = values.fold(0, (sum, value) => sum + value);

    // percentage of each gem field
    for (int i = 0; i < values.length; i++) {
      percentages[i] = (values[i] / total) * 100;
    }

    return percentages;
  }

  @override
  Widget build(BuildContext context) {
    List<double> widthValues = calculateGemPercentages(postPerformance);
    List<String> labels = ['Gems through Likes', 'Gems through Views', 'Gems through Shares'];
    List<int> amounts = [
      postPerformance.gemsLikes,
      postPerformance.gemsViews,
      postPerformance.gemsShares
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
                amount: amounts[index],
                width: widthValues[index] * 5 + 50, // Adjust width calculation as needed
              ),
            );
          },
        ),
      ],
    );
  }
}

// class IncomeSources extends StatelessWidget {
//   final PostPerformanceModel postPerformance;

//   const IncomeSources({
//     Key? key,
//     required this.postPerformance,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('Total Gems: ${postPerformance.gemsTotal}'),
//         Text('Gems Today: ${postPerformance.gemsToday}'),
//         Text('Gems All Time High: ${postPerformance.gemsAllTimeHigh}'),
//         Text('Gems Likes: ${postPerformance.gemsLikes}'),
//         Text('Gems Views: ${postPerformance.gemsViews}'),
//         Text('Gems Shares: ${postPerformance.gemsShares}'),
//       ],
//     );
//   }
// }
