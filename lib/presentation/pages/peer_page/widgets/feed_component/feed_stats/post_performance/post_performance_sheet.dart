import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance_content.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

class PostPerformanceSheet extends StatelessWidget {
  const PostPerformanceSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Performance"),
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



