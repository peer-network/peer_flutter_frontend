import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peer_app/data/provider/post_performance_provider_dummy.dart';
//import 'package:peer_app/data/provider/post_performance_provider.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_widget_holder.dart';
import 'package:peer_app/presentation/whitelabel/components/wrapper/generic_future_builder.dart';

class PostPerformanceContent extends StatelessWidget {
  const PostPerformanceContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostPerformanceProvider(),
      child: Consumer<PostPerformanceProvider>(
        builder: (context, provider, child) {
          if (provider.state == PostPerformanceState.loading) {
            return Center(child: CircularProgressIndicator());
          } else if (provider.state == PostPerformanceState.error) {
            return Center(child: Text('Error: ${provider.error}'));
          } else if (provider.state == PostPerformanceState.loaded) {
            return SingleChildScrollView(
              child: SectionWidgetHolder(postPerformance: provider.postPerformance),
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
