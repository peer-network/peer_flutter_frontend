import 'package:flutter/material.dart';
import 'package:peer_app/data/models/user_model.dart';

class CommentHeader extends StatelessWidget {
  const CommentHeader({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Text(user.username ?? 'Anonymous'); // 5: Fallback Value
  }
}
