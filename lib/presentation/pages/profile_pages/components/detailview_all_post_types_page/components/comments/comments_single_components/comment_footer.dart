import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:peer_app/presentation/whitelabel/components/date/time_passed_since_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CommentFooter extends StatelessWidget {
  const CommentFooter({super.key, required this.comment});

  final PostCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TimePassedSinceTextWidget(
            dateTime: comment.createdAt,
            style: Theme.of(context).textTheme.bodySmall!),
        const Spacer(),
        CustomIconButton(
          onPressed: () {},
          sizeType: SizeType.tiny,
          icon: IconLibrary.heart,
          color: Theme.of(context).brightness == Brightness.light
              ? LightColors.textPrimary
              : DarkColors.textPrimary,
        ),
        Text(
          '${comment.likeCount}',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? LightColors.textPrimary
                  : DarkColors.textPrimary),
        ),
        const Spacer(),
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
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
