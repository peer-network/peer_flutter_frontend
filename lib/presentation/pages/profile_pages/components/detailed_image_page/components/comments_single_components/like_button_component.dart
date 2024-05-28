import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/data/services/user_service.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class LikeButtonComponent extends StatefulWidget {
  const LikeButtonComponent(
      {super.key, required this.comment, this.textStyle, this.textColor});

  final CommentModel comment;
  final TextStyle? textStyle;
  final Color? textColor;

  @override
  State<LikeButtonComponent> createState() => _LikeButtonComponentState();
}

class _LikeButtonComponentState extends State<LikeButtonComponent> {
  bool isLoading = false;
  late bool isLiked;

  @override
  void initState() {
    super.initState();
    isLiked = widget.comment.isLiked ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.star : Icons.favorite,
        color: isLiked
            ? Theme.of(context).brightness == Brightness.light
                ? LightColors.iconCompany
                : DarkColors.iconCompany
            : widget.textColor,
      ),
      onPressed: () async {
        setState(() {
          isLoading = true;
        });
        final bool success = await UserService().toggleLike(widget.comment.id);
        setState(() {
          isLoading = false;
          if (success) {
            isLiked = !isLiked;
          }
        });
      },
      iconSize: AppDimensions.buttonHeightSmall,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
