import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class CreatePostTabBar extends StatelessWidget {
  const CreatePostTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: AppPaddings.medium),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
                height: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
                decoration: BoxDecoration(
                  borderRadius: AppBorders.createPostTabBarRadius,
                  color:
                      Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                ),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      borderRadius: AppBorders.createPostTabBarRadius,
                    ),
                    labelColor: Theme.of(context).colorScheme.secondary,
                    tabs: const [
                      Tab(child: Text('Image')),
                      Tab(child: Text('Text')),
                    ]))));
  }
}
