import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/tag_search_field.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CreateTextPostMetaData extends StatefulWidget {
  final FocusNode? titleFocusNode;
  final TextEditingController titleController;
  final TextEditingController tagController;
  final Function() onPressed;
  const CreateTextPostMetaData(
      {super.key,
      required this.onPressed,
      this.titleFocusNode,
      required this.titleController,
      required this.tagController});

  @override
  State<CreateTextPostMetaData> createState() => _CreateTextPostMetaDataState();
}

class _CreateTextPostMetaDataState extends State<CreateTextPostMetaData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPaddings.medium),
      child: Column(children: [
        Align(
            alignment: Alignment.centerLeft,
            child: CustomIconButton(
              isSplash: false,
              icon: IconLibrary.arrowUpBlue,
              onPressed: () {
                widget.onPressed();
              },
              sizeType: SizeType.large,
            )),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text('Provide a title for others to find your content')),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        InputFieldComponent(
            autoFocus: false,
            focusNode: widget.titleFocusNode,
            controller: widget.titleController,
            hintText: "Title.."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        TagSearchWidget(tagController: widget.tagController),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
                'Note: Tags will not show up in your post but help others to find it.',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Theme.of(context).disabledColor))),
      ]),
    );
  }
}
