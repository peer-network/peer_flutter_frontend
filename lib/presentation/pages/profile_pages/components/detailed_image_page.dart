import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:peer_app/presentation/whitelabel/components/date/time_passed_since_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class DetailedImagePage extends StatelessWidget {
  final FeedModel post;

  const DetailedImagePage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: AppBar(
          title: const Text('Image Details'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(post.imageUrls[0]),
              const SizedBox(height: AppPaddings.extraLarge),
              FirstLayerComment(comments: post.comments),
            ],
          ),
        ));
  }
}

class FirstLayerComment extends StatelessWidget {
  const FirstLayerComment({super.key, required this.comments});

  final List<CommentModel> comments;

  // Was tut diese widget?
  // 1. create a Column and use the spreading operator on the comments list.
  // For each comment that got spreaded, create a Column widget with a list of children.
  // 2. The children list contains a CommentComment widget (which is a single comment) and a SecondLayerComment widget.
  // In case the comment has no comments, the SecondLayerComment widget is not shown.

  @override
  Widget build(BuildContext context) {
    // for each comment build a first layer comment
    return Column(
        children: comments
            .map((comment) => Column(
                  children: [
                    CommentComment(
                        comment: comment,
                        isThirdLayerOrMore: false,
                        isSecondLayerOrMore: false),
                    comment.comments.isNotEmpty
                        ? SecondLayerComment(comments: comment.comments)
                        : Container(),
                  ],
                ))
            .toList());
  }
}

class SecondLayerComment extends StatelessWidget {
  const SecondLayerComment({super.key, required this.comments});

  final List<CommentModel> comments;

  // Was tut diese widget?
  // Everything is the same as in the FirstLayerComment widget,
  // but it is still needed to later determine the padding of it and it uses the ThirdLayerComment widget.
  // the boolean isThirdLayerOrMore is still set to false, because there is no refering to other comments.

  @override
  Widget build(BuildContext context) {
    return Column(
        children: comments
            .map((comment) => Column(
                  children: [
                    CommentComment(
                        comment: comment,
                        isThirdLayerOrMore: false,
                        isSecondLayerOrMore: true),
                    comment.comments.isNotEmpty
                        ? ThirdLayerComment(comments: comment.comments)
                        : Container(),
                  ],
                ))
            .toList());
  }
}

class ThirdLayerComment extends StatelessWidget {
  const ThirdLayerComment({super.key, required this.comments});

  final List<CommentModel> comments;

  // Was tut diese widget?
  // Everything is the same as in the SecondLayerComment widget and
  // deeper levels also build a ThirdLayerComment widget.
  // isThirdLayerOrMore is now set to true.
  // Also a referenceName is passed to the CommentComment widget.
  // The referenceName is the name of the user of the current comment.

  @override
  Widget build(BuildContext context) {
    return Column(
        children: comments
            .map((comment) => Column(
                  children: [
                    CommentComment(
                        comment: comment,
                        isThirdLayerOrMore: true,
                        isSecondLayerOrMore: true,
                        referenceName: comment.user.name),
                    comment.comments.isNotEmpty
                        ? ThirdLayerComment(comments: comment.comments)
                        : Container(),
                  ],
                ))
            .toList());
  }
}

class CommentComment extends StatelessWidget {
  const CommentComment(
      {super.key,
      required this.comment,
      required this.isThirdLayerOrMore,
      required this.isSecondLayerOrMore,
      this.referenceName});

  final CommentModel comment;
  final bool isThirdLayerOrMore;
  final bool isSecondLayerOrMore;
  final String? referenceName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppPaddings.tiny,
      ),
      child: Container(
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.backgroundContainer
            : DarkColors.backgroundContainer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              isSecondLayerOrMore
                  ? const SizedBox(width: AppPaddings.large)
                  : Container(),
              Flexible(
                child: Column(
                  // Comment top section
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              comment.user.imageUrl ?? "FALLBACK VALUE"),
                          radius: AppDimensions.iconSizeSmall,
                        ),
                        const SizedBox(width: AppPaddings.small),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      // make clickable

                                      TextSpan(
                                        text: isThirdLayerOrMore
                                            ? '@$referenceName '
                                            : "",
                                        style: const TextStyle(
                                                fontWeight: FontWeight.bold)
                                            .copyWith(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? LightColors.textCompany
                                              : DarkColors.textCompany,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            CustomToast.showSuccessToast(
                                                "jump to post");
                                            // navigate to the profile page
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  comment.user.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? LightColors.textPrimary
                                              : DarkColors.textPrimary),
                                ),
                              ],
                            ),
                            // Comment mid section
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    comment.content,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                // This is the Button that i want to display at the verry right of the comment
                                CustomIconButton(
                                  onPressed: () {},
                                  sizeType: SizeType.small,
                                  icon: IconLibrary.heart,
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? LightColors.iconCompany
                                      : DarkColors.iconCompany,
                                ),
                              ],
                            ),
                            // Comment bottom section
                            Row(
                              children: [
                                TimePassedSinceTextWidget(
                                    dateTime: comment.createdAt,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.light
                                                    ? LightColors.textPrimary
                                                    : DarkColors.textPrimary)),
                                const SizedBox(width: AppPaddings.small),
                                CustomIconButton(
                                  onPressed: () {},
                                  sizeType: SizeType.tiny,
                                  icon: IconLibrary.heart,
                                ),
                                Text(
                                  '${comment.likeCount}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? LightColors.textPrimary
                                              : DarkColors.textPrimary),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
