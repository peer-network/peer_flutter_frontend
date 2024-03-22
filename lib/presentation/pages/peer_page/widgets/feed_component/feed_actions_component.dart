import 'package:flutter/material.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class FeedActionsComponent extends StatelessWidget {
  const FeedActionsComponent({super.key});

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
          ),
          const SizedBox(width: AppPaddings.small),
          CustomIconButton(
            onPressed: () {
              // temprarily route to SharePostContactsPage
              Navigator.of(context).push(SharePostContactsRoute());
            },
            sizeType: SizeType.medium,
            icon: IconLibrary.comment,
          ),
          const SizedBox(width: AppPaddings.small),
          CustomIconButton(
            onPressed: () {},
            sizeType: SizeType.medium,
            icon: IconLibrary.share,
          ),
          const Spacer(),
          Text("3. August", style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
