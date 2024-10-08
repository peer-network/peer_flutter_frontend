import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class FeedActionsComponent extends StatelessWidget {
  const FeedActionsComponent({super.key, required this.feed});
  // DONE: muss feed model bekommen
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
              // DONE: hier auch ubergeben
              Navigator.of(context).push(SharePostContactsRoute(feed));
            },
            sizeType: SizeType.medium,
            icon: IconLibrary.forward,
            color: Theme.of(context).primaryIconTheme.color,
          ),
          const SizedBox(width: AppPaddings.small),
          CustomIconButton(
            icon: IconLibrary.horizontalMenu,
            onPressed: () {},
            color: Theme.of(context).primaryIconTheme.color,
          ),
          const Spacer(),
          Text(FormattedDate(feed.createdAt).getFormattedDate(),
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
