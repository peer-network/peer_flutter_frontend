import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_content/feed_content_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_header_component.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_image_description_component.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/image_container/avatar.dart';
import 'package:peer_app/presentation/whitelabel/components/tiles/feed_tile.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class FeedCardComponent extends StatefulWidget {
  const FeedCardComponent({super.key, required this.feed});

  final FeedModel feed;

  @override
  State<FeedCardComponent> createState() => _FeedCardComponentState();
}

class _FeedCardComponentState extends State<FeedCardComponent> {
  bool showComments = true;

  @override
  Widget build(BuildContext context) {
    return FeedTile(
      child: Column(
        children: [
          // Feed header
          FeedHeaderComponent(user: widget.feed.creator),
          // Feed content
          FeedContentComponent(feed: widget.feed),
          // Feed actions
          const FeedActionsComponent(),
          // Feed image description
          if (widget.feed.imageDescription != null)
            FeedImageDescriptionComponent(text: widget.feed.imageDescription!),
          const SizedBox(height: AppPaddings.small),
          // Feed stats
          showComments
              ? FeedStatsComponentsView(
                  comments: widget.feed.comments,
                )
              : Container()
          // Comments
        ],
      ),
    );
  }
}

class FeedStatsComponentsView extends StatelessWidget {
  const FeedStatsComponentsView({
    super.key,
    required this.comments,
  });

  final List<FeedCommentModel> comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: // listview builder from the commentsComponent
          ListView.builder(
        shrinkWrap: true,
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return CommentComponent(comment: comments[index]);
        },
      ),
    );
  }
}

class CommentComponent extends StatelessWidget {
  const CommentComponent({super.key, required this.comment});

  final FeedCommentModel comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPaddings.small),
      child: Column(
        children: [
          CommentMainContent(comment: comment),
          CommentStatsComponent(comment: comment),
          SubCommentComponent(comments: comment.comments),
        ],
      ),
    );
  }
}

class SubCommentComponent extends StatelessWidget {
  const SubCommentComponent({super.key, required this.comments});

  final List<FeedCommentModel> comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPaddings.small + AppDimensions.avatarSize,
        top: AppPaddings.small,
        bottom: AppPaddings.small,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return CommentComponent(comment: comments[index]);
        },
      ),
    );
  }
}

class CommentStatsComponent extends StatelessWidget {
  const CommentStatsComponent({super.key, required this.comment});

  final FeedCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: AppPaddings.small + AppDimensions.avatarSize,
        ),
        Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2.4),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("14 min", style: Theme.of(context).textTheme.bodySmall),
                Text("12 Likes", style: Theme.of(context).textTheme.bodySmall),
                Text("Antworten", style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
        ),
        SizedBox(
          width: SizeType.medium.iconSize(context) + AppPaddings.small,
        ),
      ],
    );
  }
}

class CommentMainContent extends StatelessWidget {
  const CommentMainContent({
    super.key,
    required this.comment,
  });

  final FeedCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        AvatarComponent(imageUrl: comment.creator.profileImageUrl),
        const SizedBox(width: AppPaddings.small),
        // Comment
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(comment.creator.username,
                  style: Theme.of(context).textTheme.titleMedium),
              Text(comment.contentText),
            ],
          ),
        ),
        const SizedBox(width: AppPaddings.small),
        // Like button
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.medium,
          icon: IconLibrary.heart,
        ),
      ],
    );
  }
}
