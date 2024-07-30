import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class TextBodyCreatePost extends StatelessWidget {
  const TextBodyCreatePost({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppPaddings.medium, vertical: AppPaddings.large),
      child: Column(
        children: [
          InputFieldComponent(controller: controller, hintText: "Title.."),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Provide a title for other to find your content')),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          InputFieldComponent(
            controller: controller,
            maxLines: 8,
            minLines: 8,
            hintText: "Type your text...",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          InputFieldComponent(controller: controller, hintText: "Tags.."),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Tags will not show up in')),
        ],
      ),
    );
  }
}
