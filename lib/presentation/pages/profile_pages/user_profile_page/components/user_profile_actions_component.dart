import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/components/follower_button_component.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/primary_button.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class UserProfileActionsComponent extends StatelessWidget {
  const UserProfileActionsComponent({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Follow Button

        PrimaryButton(
          height: AppDimensions.buttonHeightSmall,
          onPressed: () {},
          text: 'Send Message',
        ),
      ],
    );
  }
}
