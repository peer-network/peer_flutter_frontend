// import 'package:flutter/material.dart';
// import 'package:peer_app/data/models/feed_model.dart';
// import 'package:peer_app/data/models/user_model.dart';
// import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_text_widget.dart';
// import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/feed_stats_component.dart';
// import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/small_header_post_card.dart';
// import 'package:peer_app/presentation/whitelabel/colors.dart';
// import 'package:peer_app/presentation/whitelabel/constants.dart';

// class SmallTextPostCard extends StatelessWidget {
//   const SmallTextPostCard({super.key, required this.post, required this.user});

//   final FeedModel post;
//   final UserModel user;

//   @override
//   Widget build(BuildContext context) {
//     print(post.postType);
//     return Container(
//       alignment: Alignment.topCenter,
//       width: AppDimensions.profileTextPostsSliderCardWidth,
//       constraints: const BoxConstraints(
//         maxHeight: AppDimensions.profileTextPostsSliderCardMaxHeight,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             margin: const EdgeInsets.all(AppPaddings.small).copyWith(right: 0),
//             decoration: BoxDecoration(
//               borderRadius: AppBorders.defaultRadius,
//               // add shadow
//               // color: Theme.of(context).colorScheme.secondary, // to be changed
//               color: Theme.of(context).brightness == Brightness.light
//                   ? LightColors.backgroundContainer
//                   : DarkColors.backgroundContainer,
//               boxShadow: [
//                 BoxShadow(
//                   color: Theme.of(context).disabledColor.withOpacity(0.5),
//                   spreadRadius: 1,
//                   blurRadius: 2,
//                   offset: const Offset(0, 1), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SmallHeaderPostCard(creator: user, date: post.createdAt),
//                 const SizedBox(height: AppPaddings.small),
//                 FeedContentTextWidget(
//                   text: post.content.toString(),
//                   isSmallText: true,
//                 ),
//                 const SizedBox(height: AppPaddings.small),
//                 FeedStatsComponent(
//                   feed: post,
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/feed_stats_component.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/small_header_post_card.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SmallTextPostCard extends StatelessWidget {
  const SmallTextPostCard({super.key, required this.post, required this.user});

  final FeedModel post;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    print(post.postType);
    return Container(
      alignment: Alignment.topCenter,
      width: AppDimensions.profileTextPostsSliderCardWidth,
      constraints: const BoxConstraints(
        maxHeight: AppDimensions.profileTextPostsSliderCardMaxHeight,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(AppPaddings.small).copyWith(right: 0),
            decoration: BoxDecoration(
              borderRadius: AppBorders.defaultRadius,
              color: Theme.of(context).brightness == Brightness.light
                  ? LightColors.backgroundContainer
                  : DarkColors.backgroundContainer,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).disabledColor.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppPaddings.small),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallHeaderPostCard(creator: user, date: post.createdAt),
                  const SizedBox(height: AppPaddings.small),
                  Text(
                    post.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: AppPaddings.small),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final textSpan = TextSpan(
                        text: post.content,
                        style: Theme.of(context).textTheme.bodyMedium,
                      );
                      final textPainter = TextPainter(
                        text: textSpan,
                        maxLines: 5,
                        ellipsis: '...',
                        textDirection: TextDirection.ltr,
                      );
                      textPainter.layout(maxWidth: constraints.maxWidth);

                      bool isOverflowing = textPainter.didExceedMaxLines;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: post.content,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (isOverflowing)
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Theme.of(context)
                                        .scaffoldBackgroundColor
                                        .withOpacity(0.0),
                                    Theme.of(context).scaffoldBackgroundColor,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: AppPaddings.small),
                  FeedStatsComponent(
                    feed: post,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
