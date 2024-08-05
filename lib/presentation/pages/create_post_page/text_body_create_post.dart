import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class TextBodyCreatePost extends StatelessWidget {
  const TextBodyCreatePost(
      {Key? key,
      required this.titleController,
      required this.textContentController,
      required this.tagController})
      : super(key: key);

  final TextEditingController titleController;
  final TextEditingController textContentController;
  final TextEditingController tagController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.medium, vertical: AppPaddings.large),
      child: SingleChildScrollView(
          child: Column(
        children: [
          InputFieldComponent(controller: titleController, hintText: "Title.."),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Provide a title for others to find your content')),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          InputFieldComponent(
            controller: textContentController,
            maxLines: 8,
            minLines: 8,
            hintText: "Type your text...",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: Theme.of(context).dividerColor,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("OR"),
              ),
              Expanded(
                child: Divider(
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          InputFieldComponent(controller: tagController, hintText: "Tags.."),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('Tags will not show up in')),
        ],
      )),
    );
  }
}
