import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user.dart';
import 'package:peer_app/data/services/user_service.dart';
import 'package:peer_app/presentation/pages/profile_pages/user_profile_page/user_profile_body.dart';
import 'package:peer_app/presentation/whitelabel/components/wrapper/generic_future_builder.dart';

class UserProfileWrapperID extends StatelessWidget {
  const UserProfileWrapperID({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return GenericFutureBuilder<UserModel?>(
      futureFunction: UserService().fetchNewUser(userId),
      dataBuilder: (context, UserModel? data) => UserProfileBody(user: data!),
      name: 'User Profile Wrapper ID',
    );
  }
}
