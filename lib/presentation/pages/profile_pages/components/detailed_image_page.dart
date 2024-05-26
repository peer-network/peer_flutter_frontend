import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/models/user_model.dart';

import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:peer_app/presentation/whitelabel/components/date/time_passed_since_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class DetailedImagePage extends StatelessWidget {
  final PostModel post;

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
              Image.network((post as ImagePost).imageUrls[0]),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: CommentComment(
                          comment: comment,
                          isThirdLayerOrMore: false,
                          isSecondLayerOrMore: true),
                    ),
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
            .map((CommentModel comment) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: CommentComment(
                          comment: comment,
                          isThirdLayerOrMore: true,
                          isSecondLayerOrMore: true,
                          referenceName: comment.creator.name ?? "HERE"),
                    ),
                    comment.comments.isNotEmpty
                        ? ThirdLayerComment(comments: comment.comments)
                        : Container(),
                  ],
                ))
            .toList());
  }
}

class OldCommentComment extends StatelessWidget {
  const OldCommentComment(
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
          padding: const EdgeInsets.all(AppPaddings.small),
          child: Row(
            children: [
              isSecondLayerOrMore
                  ? const SizedBox(width: AppPaddings.extraLarge)
                  : Container(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(comment.creator.imageUrl ??
                        "https://randomuser.me/api/portraits/men/1.jpg"),
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
                            comment.creator.name ?? "HERE",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? LightColors.textPrimary
                                        : DarkColors.textPrimary),
                          ),
                        ],
                      ),
                      // Comment mid section
                      SizedBox(
                        width: isSecondLayerOrMore
                            ? MediaQuery.of(context).size.width * 0.695
                            : MediaQuery.of(context).size.width * 0.75,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                comment.content,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Theme.of(context).brightness ==
                                                Brightness.light
                                            ? LightColors.textPrimary
                                            : DarkColors.textPrimary),
                              ),
                            ),
                            const Spacer(),
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
                      ),
                      // Comment bottom section
                      SizedBox(
                        width: isSecondLayerOrMore
                            ? MediaQuery.of(context).size.width * 0.495
                            : MediaQuery.of(context).size.width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TimePassedSinceTextWidget(
                                dateTime: comment.createdAt,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Theme.of(context).brightness ==
                                                Brightness.light
                                            ? LightColors.textPrimary
                                            : DarkColors.textPrimary)),
                            const SizedBox(width: AppPaddings.small),
                            Row(
                              children: [
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
                                ),
                              ],
                            ),
                            const Text("Comment"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CommentComment extends StatelessWidget {
//   const CommentComment(
//       {super.key,
//       required this.comment,
//       required this.isThirdLayerOrMore,
//       required this.isSecondLayerOrMore,
//       this.referenceName});

//   final CommentModel comment;
//   final bool isThirdLayerOrMore;
//   final bool isSecondLayerOrMore;
//   final String? referenceName;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         UserImage(
//           imageUrl: comment.creator.imageUrl,
//         ),
//         CommentContent(
//           comment: comment,
//           isThirdLayerOrMore: isThirdLayerOrMore,
//           isSecondLayerOrMore: isSecondLayerOrMore,
//           referenceName: referenceName,
//         ),
//         const Spacer(),
//         const CasparHeart()
//       ],
//     );
//   }
// }

// class UserImage extends StatelessWidget {
//   const UserImage({super.key, required this.imageUrl});

//   final String? imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(
//         AppPaddings.medium,
//       ),
//       alignment: Alignment.topCenter,
//       child: CircleAvatar(
//         backgroundImage: NetworkImage(imageUrl!),
//         radius: AppDimensions.iconSizeSmall,
//       ),
//     );
//   }
// }

// class CommentContent extends StatelessWidget {
//   const CommentContent(
//       {super.key,
//       required this.comment,
//       required this.isThirdLayerOrMore,
//       required this.isSecondLayerOrMore,
//       this.referenceName});

//   final CommentModel comment;
//   final bool isThirdLayerOrMore;
//   final bool isSecondLayerOrMore;
//   final String? referenceName;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: RichText(
//         text: TextSpan(
//           children: <TextSpan>[
//             // make clickable

//             TextSpan(
//               text: isThirdLayerOrMore ? '@$referenceName ' : "",
//               style: const TextStyle(fontWeight: FontWeight.bold).copyWith(
//                 color: Theme.of(context).brightness == Brightness.light
//                     ? LightColors.textCompany
//                     : DarkColors.textCompany,
//               ),
//               recognizer: TapGestureRecognizer()
//                 ..onTap = () {
//                   CustomToast.showSuccessToast("jump to post");
//                   // navigate to the profile page
//                 },
//             ),
//             TextSpan(
//               text: comment.content,
//               style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                   color: Theme.of(context).brightness == Brightness.light
//                       ? LightColors.textPrimary
//                       : DarkColors.textPrimary),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CasparHeart extends StatelessWidget {
//   const CasparHeart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       alignment: Alignment.centerRight,
//       padding: const EdgeInsets.all(8.0),
//       child: CustomIconButton(
//         onPressed: () {},
//         sizeType: SizeType.small,
//         icon: IconLibrary.heart,
//         color: Theme.of(context).brightness == Brightness.light
//             ? LightColors.iconCompany
//             : DarkColors.iconCompany,
//       ),
//     );
//   }
// }

/////////////////////////////////////////////////////////////
// comment_comment.dart

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
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        UserImage(imageUrl: comment.creator.imageUrl),
        Expanded(
          // 1: Expanded
          child: CommentMiddleSection(
            comment: comment,
            isThirdLayerOrMore: isThirdLayerOrMore,
            isSecondLayerOrMore: isSecondLayerOrMore,
            referenceName: referenceName,
          ),
        ),
        // const Spacer(),
        const CasparHeart(),
      ],
    );
  }
}

// user_image.dart

class UserImage extends StatelessWidget {
  const UserImage({super.key, required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPaddings.medium),
      alignment: Alignment.topCenter,
      child: CircleAvatar(
        backgroundImage:
            imageUrl != null ? NetworkImage(imageUrl!) : null, // 2: Null Safety
        radius: AppDimensions.iconSizeSmall,
        child: imageUrl == null
            ? const Icon(Icons.person)
            : null, // 3: Placeholder Icon
      ),
    );
  }
}

// comment_middle_section.dart

class CommentMiddleSection extends StatelessWidget {
  const CommentMiddleSection(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // 4: CrossAxisAlignment
      children: [
        CommentHeader(user: comment.creator),
        CommentContent(
          comment: comment,
          isThirdLayerOrMore: isThirdLayerOrMore,
          isSecondLayerOrMore: isSecondLayerOrMore,
          referenceName: referenceName,
        ),
        CommentFooter(comment: comment),
      ],
    );
  }
}

// comment_header.dart

class CommentHeader extends StatelessWidget {
  const CommentHeader({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Text(user.name ?? 'Anonymous'); // 5: Fallback Value
  }
}

// comment_content.dart

class CommentContent extends StatelessWidget {
  const CommentContent(
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
    final theme = Theme.of(context); // 6: Cached Theme Data
    final textStyle = theme.textTheme.titleMedium!.copyWith(
      color: theme.brightness == Brightness.light
          ? LightColors.textPrimary
          : DarkColors.textPrimary,
    );

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          if (isThirdLayerOrMore)
            TextSpan(
              text: '@$referenceName ',
              style: const TextStyle(fontWeight: FontWeight.bold).copyWith(
                color: theme.brightness == Brightness.light
                    ? LightColors.textCompany
                    : DarkColors.textCompany,
              ),
              recognizer: TapGestureRecognizer() // 7: TapGestureRecognizer
                ..onTap = () {
                  CustomToast.showSuccessToast("jump to post");
                  // navigate to the profile page
                },
            ),
          TextSpan(
            text: comment.content,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

// comment_footer.dart

class CommentFooter extends StatelessWidget {
  const CommentFooter({super.key, required this.comment});

  final CommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TimePassedSinceTextWidget(
            dateTime: comment.createdAt,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? LightColors.textPrimary
                    : DarkColors.textPrimary)),
        const SizedBox(width: 8), // 8: SizedBox for spacing
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.tiny,
          icon: IconLibrary.heart,
        ),
        Text(
          '${comment.likeCount}',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? LightColors.textPrimary
                  : DarkColors.textPrimary),
        ),
        const SizedBox(width: 8), // 9: SizedBox for spacing

        GestureDetector(
          onTap: () {
            CustomToast.showSuccessToast("Write a comment");
          },
          child: Text(
            "Comment",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).brightness == Brightness.light
                    ? LightColors.textPrimary
                    : DarkColors.textPrimary),
          ),
        )
      ],
    );
  }
}

// caspar_heart.dart

class CasparHeart extends StatelessWidget {
  const CasparHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(AppPaddings.tiny),
      child: CustomIconButton(
        onPressed: () {},
        sizeType: SizeType.small,
        icon: IconLibrary.heart,
        color: Theme.of(context).brightness == Brightness.light
            ? LightColors.iconCompany
            : DarkColors.iconCompany,
      ),
    );
  }
}
