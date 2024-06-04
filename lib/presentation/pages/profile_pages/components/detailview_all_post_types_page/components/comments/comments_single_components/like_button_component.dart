import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';

class LikeCommentButtonComponent extends StatefulWidget {
  const LikeCommentButtonComponent(
      {super.key, required this.isLiked, required this.commentId});

  final bool isLiked;
  final String commentId;

  @override
  State<LikeCommentButtonComponent> createState() =>
      _LikeCommentButtonComponentState();
}

class _LikeCommentButtonComponentState
    extends State<LikeCommentButtonComponent> {
  bool isLoading = false;
  late bool isLikedState;

  @override
  void initState() {
    super.initState();
    isLikedState = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: isLikedState ? IconLibrary.heartFilled : IconLibrary.heart,
      onPressed: () async {
        setState(() {
          isLoading = true;
        });
        // TODO api call -> like comment by id

        setState(() {
          isLikedState = !isLikedState;
          isLoading = false;
        });
      },
      sizeType: SizeType.small,
    );
  }
}
