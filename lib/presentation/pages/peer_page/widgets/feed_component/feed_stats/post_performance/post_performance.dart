import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance_content.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

class PostPerformance extends StatelessWidget {
  const PostPerformance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_left)),
            title: const Text("Post Performance"),
            centerTitle: true,
          ),
      body: Container(
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
        ),
        child: const PostPerformanceContent(),
      ),
    );
  }
}