import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/create_text_post_content.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/create_text_post_meta_data.dart';

class TextBodyCreatePost extends StatefulWidget {
  const TextBodyCreatePost({
    super.key,
    required this.titleController,
    required this.textContentController,
    required this.tagController,
    required this.pageViewController,
    this.titleFocusNode,
    this.tagFocusNode,
    required this.isPostComplete,
  });

  final PageController pageViewController;
  final TextEditingController titleController;
  final TextEditingController textContentController;
  final TextEditingController tagController;
  final FocusNode? titleFocusNode;
  final FocusNode? tagFocusNode;
  final ValueNotifier<bool> isPostComplete;

  @override
  State<TextBodyCreatePost> createState() => _TextBodyCreatePostState();
}

class _TextBodyCreatePostState extends State<TextBodyCreatePost> {
  PlatformFile? textFile;

  void onInputError(String? error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error ?? 'An error occurred'),
        backgroundColor: Theme.of(context).colorScheme.error,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height * 0.15,
            right: 20,
            left: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: widget.pageViewController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return CreateTextPostContent(
            titleFocusNode: widget.titleFocusNode,
            textContentController: widget.textContentController,
            textFile: textFile,
            validateTextContent: () {
              if (widget.textContentController.text.trim().isNotEmpty) {
                widget.pageViewController.animateToPage(1,
                    duration: Durations.long4, curve: Curves.easeInOut);
              } else {
                onInputError('Error: Enter some text to create a post');
              }
            },
          );
        }
        if (index == 1) {
          return CreateTextPostMetaData(
              titleController: widget.titleController,
              tagController: widget.tagController,
              titleFocusNode: widget.titleFocusNode,
              onPressed: () => widget.pageViewController.animateToPage(0,
                  duration: Durations.long4, curve: Curves.easeInOut));
        }
        return null;
      },
    );
  }
}
