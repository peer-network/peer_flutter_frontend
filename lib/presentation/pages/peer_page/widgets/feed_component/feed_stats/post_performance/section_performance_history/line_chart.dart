// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';

// class CustomLineChart extends StatefulWidget {
//   const CustomLineChart({super.key});

//   @override
//   State<CustomLineChart> createState() => _CustomLineChartState();
// }

// class _CustomLineChartState extends State<CustomLineChart> {
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
//           child: <<put start date here>>, style: style),
//         );
//         break;
//       case 10:
//         text = <<put end date here>>, style: style);
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


import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/data/models/post_performance_model.dart';

class CustomLineChart extends StatefulWidget {
  final PostPerformanceModel postPerformance;

  const CustomLineChart({super.key, required this.postPerformance});

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  List<Color> gradientColors = const [
    Color.fromARGB(115, 175, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
  ];

  @override
  Widget build(BuildContext context) {
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
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final createdAt = widget.postPerformance.createdAt!;
    final totalDays = DateTime.now().difference(createdAt).inDays.toDouble();
    final DateTime date = createdAt.add(Duration(days: value.toInt()));

    TextStyle style = TextStyle(
      color: Theme.of(context).brightness == Brightness.light
          ? LightColors.textBright
          : DarkColors.textPrimary,
    );

    String formattedDate;
    if (value == 0) {
      formattedDate = "${createdAt.day}.${createdAt.month}.${createdAt.year}";
    } else if (value == totalDays) {
      formattedDate = "${date.day}.${date.month}";
    } else {
      return const SizedBox.shrink();
    }

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
    final maxY = widget.postPerformance.likesPerDay.values.fold(0.0, max);
    if (value == 0) {
      text = '0';
    } else if (value == maxY / 2) {
      text = (maxY / 2).round().toString();
    } else if (value == maxY) {
      text = maxY.round().toString();
    } else {
      return const SizedBox.shrink();
    }

    return Transform.rotate(
      angle: -pi / 2,
      child: Text(text, style: style, textAlign: TextAlign.left),
    );
  }

  LineChartData mainData() {
    final spots = widget.postPerformance.likesPerDay.entries
        .map((e) => FlSpot(
            e.key.difference(widget.postPerformance.createdAt!).inDays
                .toDouble(),
            e.value))
        .toList();
    final maxY = widget.postPerformance.likesPerDay.values.fold(0.0, max);

    return LineChartData(
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
            interval: max(widget.postPerformance.likesPerDay.length / 2, 1).toDouble(),
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          axisNameWidget: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              child:
                  Text('Wert', style: Theme.of(context).textTheme.bodyMedium!)),
          sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: leftTitleWidgets,
              reservedSize: 26,
              interval: maxY / 2),
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
      maxX: DateTime.now().difference(widget.postPerformance.createdAt!).inDays.toDouble(),
      minY: 0,
      maxY: maxY,
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
            gradient:
                LinearGradient(stops: const [0.2, 1.0], colors: gradientColors),
          ),
        ),
      ],
    );
  }
}
