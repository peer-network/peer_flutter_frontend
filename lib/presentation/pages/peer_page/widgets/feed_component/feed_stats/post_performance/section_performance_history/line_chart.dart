import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_performance_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/main_data.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class PostPerformanceChart extends StatefulWidget {
  final PostPerformanceModel postPerformance;

  const PostPerformanceChart({super.key, required this.postPerformance});

  @override
  State<PostPerformanceChart> createState() => _PostPerformanceChartState();
}

class _PostPerformanceChartState extends State<PostPerformanceChart> {

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppAspectRatios.graphAspectRatio,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPaddings.small)
            .copyWith(right: AppPaddings.extraLarge),
        child: LineChart(
          lineChartData(context, widget.postPerformance),
        ),
      ),
    );
  }
}
