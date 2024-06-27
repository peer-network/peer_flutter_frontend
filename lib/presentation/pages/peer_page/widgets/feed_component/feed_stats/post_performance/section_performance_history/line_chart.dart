import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/main_data.dart';

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
              mainData(context, widget.postPerformance),
            ),
          ),
        ),
      ],
    );
  }
}
