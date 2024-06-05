import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class SmallTextPostCard extends StatelessWidget {
  const SmallTextPostCard({super.key, required this.post, required this.user});

  final PostModel post;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
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
              borderRadius: AppBorders.profileTextPostCardRadius,
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
                  const SizedBox(height: AppPaddings.small),
                  Text(
                    (post as TextPost).title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: AppPaddings.small),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final textSpan = TextSpan(
                        text: (post as TextPost).content,
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

                      return Stack(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: (post as TextPost).content,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (isOverflowing)
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              height: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? LightColors.backgroundContainer
                                              .withOpacity(0.7)
                                          : DarkColors.backgroundContainer
                                              .withOpacity(0.7),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
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
