import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class TextBodyCreatePost extends StatelessWidget {
  const TextBodyCreatePost({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPaddings.medium,
        vertical: AppPaddings.large,
      ),
      child: InputFieldComponent(
        controller: controller,
        maxLines: 8,
        minLines: 8,
        hintText: "Schreibe deinen Text...",
      ),
    );
  }
}
