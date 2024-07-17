import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/post_performance.dart';
import 'package:provider/provider.dart';

class FeedActionsComponent extends StatelessWidget {
  const FeedActionsComponent({super.key, required this.feed});
  // DONE: must get feed model
  final PostModel feed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          CustomIconButton(
            onPressed: () {},
            sizeType: SizeType.medium,
            icon: IconLibrary.heart,
            color: Theme.of(context).primaryIconTheme.color,
          ),
          const SizedBox(width: AppPaddings.small),
          CustomIconButton(
            onPressed: () {},
            sizeType: SizeType.medium,
            icon: IconLibrary.comment,
            color: Theme.of(context).primaryIconTheme.color,
          ),
          const SizedBox(width: AppPaddings.small),
          CustomIconButton(
            onPressed: () {
              // DONE: also handed over here
              Navigator.of(context).push(SharePostContactsRoute(feed));
            },
            sizeType: SizeType.medium,
            icon: IconLibrary.forward,
            color: Theme.of(context).primaryIconTheme.color,
          ),
          const SizedBox(width: AppPaddings.small),
          CustomIconButton(
            icon: IconLibrary.horizontalMenu,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => 
                    PostPerformance(postId: feed.id!)
                  ),
              );
            },
            color: Theme.of(context).primaryIconTheme.color,
          ),
          const Spacer(),
          Text(FormattedDate(feed.createdAt!).getFormattedDate(),
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
