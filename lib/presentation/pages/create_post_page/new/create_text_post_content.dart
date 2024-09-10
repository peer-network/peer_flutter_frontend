import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/or_divider.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/file_upload_field.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CreateTextPostContent extends StatefulWidget {
  final FocusNode? titleFocusNode;
  final TextEditingController textContentController;
  PlatformFile? textFile;
  final Function() validateTextContent;
  CreateTextPostContent(
      {super.key,
      this.titleFocusNode,
      required this.textContentController,
      this.textFile,
      required this.validateTextContent});

  @override
  State<CreateTextPostContent> createState() => _CreateTextPostContentState();
}

class _CreateTextPostContentState extends State<CreateTextPostContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.medium, vertical: AppPaddings.large),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Enter your text manually',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          InputFieldComponent(
            onFieldSubmitted: (text) {
              widget.titleFocusNode!.requestFocus();
            },
            autoFocus: false,
            controller: widget.textContentController,
            maxLines: 5,
            minLines: 3,
            hintText: "Type your text...",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          const ORDivider(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Upload a text file (.txt)',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          FileUploadField(onFilePicked: (file) {
            setState(() {
              widget.textFile = file;
            });
          }),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                style: TextButton.styleFrom(
                    //splashFactory: NoSplash.splashFactory
                    ),
                onPressed: () {
                  widget.validateTextContent();
                },
                child: Text('Continue',
                    style: Theme.of(context).textTheme.titleLarge)),
            CustomIconButton(
              isSplash: false,
              icon: IconLibrary.arrowDownBlue,
              onPressed: () {
                widget.validateTextContent();
              },
              sizeType: SizeType.large,
            )
          ]),
        ],
      )),
    );
  }
}
