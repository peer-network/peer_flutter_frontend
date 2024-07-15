import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';

class CommentContent extends StatelessWidget {
  const CommentContent(
      {super.key,
      required this.comment,
      required this.isThirdLayerOrMore,
      required this.isSecondLayerOrMore,
      this.referenceName});

  final PostCommentModel comment;
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
