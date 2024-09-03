import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/components/date/formatted_date.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_components/hidden_icons.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_components/visible_icons.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_actions_components/image_slider_indicator.dart';

class FeedActionsComponent extends StatefulWidget {
  const FeedActionsComponent(
      {super.key, required this.feed, this.currentIndex});
  final PostModel feed;
  final ValueNotifier<double>? currentIndex;

  @override
  State<FeedActionsComponent> createState() => _FeedActionsComponentState();
}

class _FeedActionsComponentState extends State<FeedActionsComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _showIcons = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: AppDuration.imagePostWidgetTransitionDuration,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleMenu() {
    setState(() {
      _showIcons = !_showIcons;
    });
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  Widget buildSlider() {
    if (widget.feed is ImagePost &&
        (widget.feed as ImagePost).media.length > 1) {
      return ImageSliderIndicator(
        key: const ValueKey(1),
        imageCount: (widget.feed as ImagePost).media.length,
        currentIndex: widget.currentIndex!,
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.small),
      child: Row(
        children: [
          ...buildVisibleIcons(context, widget.feed),
          const SizedBox(width: AppPaddings.small),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: -_controller.value * (3.14 / 2), // Rotate -90 degrees
                child: child,
              );
            },
            child: CustomIconButton(
                icon: IconLibrary.horizontalMenu,
                sizeType: SizeType.small,
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () => _toggleMenu()),
          ),
          const SizedBox(width: AppPaddings.small),
          AnimatedSwitcher(
            duration: AppDuration.imagePostWidgetTransitionDuration,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: _showIcons
                ? buildHiddenIcons(context, const ValueKey(2), widget.feed)
                : Padding(
                    key: const ValueKey(2),
                    padding: const EdgeInsets.only(left: AppPaddings.large),
                    child: buildSlider()),
          ),
          const Spacer(),
          Text(
              FormattedDate(widget.feed.createdAt ??
                      DateTime
                          .now()) //TODO: quick fix because video does not work
                  .getFormattedDate(),
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
