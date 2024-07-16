import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance_content.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/base_appbar.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

class PostPerformance extends StatelessWidget {
  final String postId;
  const PostPerformance({
    Key? key,
    required this.postId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppbar(
        title: const Text('Post Performance'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              DarkColors.fadeDark,
              DarkColors.fadeBright,
            ],
          ),
        ),
        child: PostPerformanceContent(postId: postId),
      ),
    );
  }
}
