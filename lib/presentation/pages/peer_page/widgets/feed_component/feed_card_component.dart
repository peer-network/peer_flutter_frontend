import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/components/tiles/feed_tile.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class FeedCardComponent extends StatelessWidget {
  const FeedCardComponent({super.key, required this.feed});

  final FeedModel feed;

  @override
  Widget build(BuildContext context) {
    return FeedTile(
      child: Column(
        children: [
          FeedHeaderComponent(user: feed.creator),
          FeedContentComponent(
            feed: feed,
          ),
          const FeedActionsComponent(),
          const SizedBox(height: AppPaddings.small),
          const FeedStatsWithCommentsComponent(),
        ],
      ),
    );
  }
}

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
            onPressed: () {},
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

class FeedHeaderComponent extends StatelessWidget {
  const FeedHeaderComponent({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          AvatarComponent(imageUrl: user.profileImageUrl),
          const SizedBox(width: AppPaddings.small),
          Text(user.username, style: Theme.of(context).textTheme.titleLarge!),
          const Spacer(),
          SecondaryButton(text: 'Follow', onPressed: () => print('Follow')),
        ],
      ),
    );
  }
}

class FeedContentComponent extends StatelessWidget {
  const FeedContentComponent({super.key, required this.feed});
  final FeedModel feed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        feed.imageUrls.isNotEmpty
            ? FeedContentImageWidget(
                imageUrls: feed.imageUrls,
              )
            : const SizedBox(),
        feed.contentText != null
            ? FeedContentTextWidget(text: feed.contentText!)
            : const SizedBox(),
      ],
    );
  }
}

class FeedContentImageWidget extends StatelessWidget {
  final List<String> imageUrls;
  const FeedContentImageWidget({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width, // Assuming square images
      child: PageView.builder(
        itemCount: imageUrls.length,
        controller: PageController(
            viewportFraction:
                1), // Adjust the viewportFraction for partially visible next image
        itemBuilder: (context, index) {
          return Image.network(imageUrls[index], fit: BoxFit.fitWidth);
        },
      ),
    );
  }
}

class FeedStatsWithCommentsComponent extends StatelessWidget {
  const FeedStatsWithCommentsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          LikeCountComponent(),
          SizedBox(width: AppPaddings.small),
          ViewCountComponent(),
          Spacer(),
          CommentCountComponent(),
        ],
      ),
    );
  }
}

class LikeCountComponent extends StatelessWidget {
  const LikeCountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.heart,
        ),
        const SizedBox(width: AppPaddings.small),
        Text("12", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}

class ViewCountComponent extends StatelessWidget {
  const ViewCountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.small,
          icon: IconLibrary.view,
        ),
        const SizedBox(width: AppPaddings.small),
        Text("12", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}

class CommentCountComponent extends StatelessWidget {
  const CommentCountComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("12", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(width: AppPaddings.small),
        Text("Kommentare", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
