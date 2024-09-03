import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/data/services/user_service.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FollowerButtonComponent extends StatefulWidget {
  const FollowerButtonComponent(
      {super.key, required this.user, this.textStyle, this.textColor});

  final UserModel user;
  final TextStyle? textStyle;
  final Color? textColor;

  @override
  State<FollowerButtonComponent> createState() =>
      _FollowerButtonComponentState();
}

class _FollowerButtonComponentState extends State<FollowerButtonComponent> {
  bool isLoading = false;
  bool? isFollowing;

  @override
  void initState() {
    super.initState();
    isFollowing = widget.user.isFollowing;
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      height: AppDimensions.buttonHeightSmall,
      onPressed: () async {
        if (isFollowing == null) {
          return;
        }
        setState(() {
          isLoading = true;
        });
        final bool success = false;
        //await UserService().toggleFollow(widget.user.id);
        setState(
          () {
            isLoading = false;
            if (success) {
              isFollowing = !isFollowing!;
            }
          },
        );
      },
      text: (isFollowing != null)
          ? (isFollowing!)
              ? 'Unfollow'
              : 'Follow'
          : 'N/A',
      textColor: widget.textColor,
      textStyle: widget.textStyle,
      isFilled: true,
      backgroundColor: (isFollowing == null)
          ? isFollowing!
              ? Theme.of(context).brightness == Brightness.light
                  ? LightColors.unfollowBackground
                  : DarkColors.unfollowBackground
              : Theme.of(context).brightness == Brightness.light
                  ? LightColors.followBackground
                  : DarkColors.followBackground
          : Theme.of(context).brightness == Brightness.light
              ? LightColors.borderDisabled
              : DarkColors.borderDisabled,
      isLoading: isLoading,
    );
  }
}
