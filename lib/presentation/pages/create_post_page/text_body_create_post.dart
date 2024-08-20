import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/file_upload_field.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/input/input_field_component.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class TextBodyCreatePost extends StatefulWidget {
  const TextBodyCreatePost({
    Key? key,
    required this.titleController,
    required this.textContentController,
    required this.tagController,
    this.pageViewController,
    this.titleFocusNode,
    this.tagFocusNode,
    required this.isPostComplete,
    required this.onPostCreationStarted,
  }) : super(key: key);

  final PageController? pageViewController;
  final TextEditingController titleController;
  final TextEditingController textContentController;
  final TextEditingController tagController;
  final FocusNode? titleFocusNode;
  final FocusNode? tagFocusNode;
  final ValueNotifier<bool> isPostComplete;
  final ValueChanged<bool> onPostCreationStarted;

  @override
  State<TextBodyCreatePost> createState() => _TextBodyCreatePostState();
}

class _TextBodyCreatePostState extends State<TextBodyCreatePost> {
  PlatformFile? textFile;
  bool isContentError = false;

  @override
  void initState() {
    super.initState();
    widget.textContentController.addListener(onTextContentChanged);
  }

  void onTextContentChanged() {
    // Set isPostBeingCreated to true if user starts typing
    if (widget.textContentController.text.isNotEmpty) {
      widget.onPostCreationStarted(true);
      if (isContentError) {
        setState(() {
          isContentError = false;
        });
      }
    }
  }

  void validateTextContent() {
    if (widget.textContentController.text.trim().isNotEmpty ||
        textFile != null) {
      widget.pageViewController!
          .animateToPage(1, duration: Durations.long4, curve: Curves.easeInOut);
    } else {
      setState(() {
        isContentError = true;
      });
      widget
          .onPostCreationStarted(false); // Notify that the post is not complete
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: widget.pageViewController,
      physics: const NeverScrollableScrollPhysics(),
      //itemCount: 2,

      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
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
                    widget.tagFocusNode!.requestFocus();
                  },
                  autoFocus: false,
                  controller: widget.textContentController,
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
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Upload a text file (.txt)',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                FileUploadField(onFilePicked: (file) {
                  setState(() {
                    textFile = file;
                    isContentError = false;
                    widget.onPostCreationStarted(true);
                  });
                }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          //splashFactory: NoSplash.splashFactory
                          ),
                      onPressed: () {
                        validateTextContent();
                      },
                      child: Text('Continue',
                          style: Theme.of(context).textTheme.titleLarge)),
                  CustomIconButton(
                    isSplash: false,
                    icon: IconLibrary.arrowDownBlue,
                    onPressed: () {
                      validateTextContent();
                    },
                    sizeType: SizeType.large,
                  )
                ]),
                AnimatedOpacity(
                  opacity: isContentError ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: AnimatedPadding(
                    padding: EdgeInsets.only(top: isContentError ? 1.0 : 0.0),
                    duration: const Duration(milliseconds: 200),
                    child: Text(
                      'Error: Enter some text to create a post',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Theme.of(context).colorScheme.error),
                    ),
                  ),
                ),
              ],
            )),
          );
        }
        if (index == 1) {
          return Padding(
            padding: const EdgeInsets.all(AppPaddings.medium),
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: CustomIconButton(
                    isSplash: false,
                    icon: IconLibrary.arrowUpBlue,
                    onPressed: () {
                      widget.pageViewController!.animateToPage(0,
                          duration: Durations.long4, curve: Curves.easeInOut);
                    },
                    sizeType: SizeType.large,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('Provide a title for others to find your content')),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              InputFieldComponent(
                  autoFocus: false,
                  focusNode: widget.titleFocusNode,
                  controller: widget.titleController,
                  hintText: "Title.."),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Add tags to help others to find your post')),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              InputFieldComponent(
                  autoFocus: false,
                  focusNode: widget.tagFocusNode,
                  controller: widget.tagController,
                  hintText: "Tags.."),
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
      },
    );
  }
}
