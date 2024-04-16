import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/data/services/user_service.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class FollowerButtonComponent extends StatefulWidget {
  const FollowerButtonComponent({super.key, required this.user});

  final UserModel user;

  @override
  State<FollowerButtonComponent> createState() =>
      _FollowerButtonComponentState();
}

class _FollowerButtonComponentState extends State<FollowerButtonComponent> {
  bool isLoading = false;
  late bool isFollowing;

  @override
  void initState() {
    super.initState();
    isFollowing = widget.user.isFollowing ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      height: AppDimensions.buttonHeightSmall,
      onPressed: () async {
        setState(() {
          isLoading = true;
        });
        final bool success = await UserService().toggleFollow(widget.user.id);
        setState(
          () {
            isLoading = false;
            if (success) {
              isFollowing = !isFollowing;
            }
          },
        );
      },
      text: isFollowing ? 'Unfollow' : 'Follow',
      isFilled: true,
      backgroundColor: isFollowing
          ? CustomColors.errorBorderColor
          : CustomColors.primaryColor,
      isLoading: isLoading,
    );
  }
}
