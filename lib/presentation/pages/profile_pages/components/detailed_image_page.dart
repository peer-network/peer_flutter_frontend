import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_model.dart';
import 'package:peer_app/data/models/feed_comment.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
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
                    CommentComment(comment: comment, isThirdLayerOrMore: false),
                    comment.comments.isNotEmpty
                        ? Padding(
                            padding:
                                const EdgeInsets.only(left: AppPaddings.large),
                            child:
                                SecondLayerComment(comments: comment.comments),
                          )
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
                    CommentComment(comment: comment, isThirdLayerOrMore: false),
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
      this.referenceName});

  final CommentModel comment;
  final bool isThirdLayerOrMore;
  final String? referenceName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage(comment.user.imageUrl ?? "FALLBACK VALUE"),
                radius: AppDimensions.iconSizeSmall,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.user.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        '${comment.createdAt}',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Likes: ${comment.likeCount}',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      CustomIconButton(
                        onPressed: () {},
                        sizeType: SizeType.small,
                        icon: IconLibrary.heart,
                      ),
                      const Icon(
                        Icons.favorite,
                        size: 16, // Adjust the size as needed
                        color: Colors.grey,
                      ),
                      const SizedBox(
                          width:
                              4), // Adding some spacing between the icon and the text
                      Text(
                        '${comment.likeCount}', // Display only the like count
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                // make clickable

                TextSpan(
                  text: isThirdLayerOrMore ? '@$referenceName ' : "",
                  style: const TextStyle(fontWeight: FontWeight.bold).copyWith(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      CustomToast.showSuccessToast("jump to post");
                      // navigate to the profile page
                    },
                ),
                TextSpan(
                  text: comment.content,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
