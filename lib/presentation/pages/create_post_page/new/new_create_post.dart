import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/create_post_tab_bar.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_text_post.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  // image/text post
  CreatePostType activeCreatePostType = CreatePostType.image;
  final TextEditingController titleController = TextEditingController();

  // text post
  ValueNotifier<bool> isTextPostComplete = ValueNotifier<bool>(false);
  PageController textPostController = PageController();
  final TextEditingController textContentController = TextEditingController();
  final TextEditingController tagController = TextEditingController();
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode textContentFocusNode = FocusNode();
  final FocusNode tagFocusNode = FocusNode();

  // image post
  ValueNotifier<bool> isImagePostComplete = ValueNotifier<bool>(false);
  ImageAspectRatios activeImageAspectRatio = ImageAspectRatios.square;
  List<PlatformFile> images = [];
  final TextEditingController imageDescriptionController =
      TextEditingController();

  @override
  void dispose() {
    textPostController.dispose();
    titleController.dispose();
    textContentController.dispose();
    tagController.dispose();
    titleFocusNode.dispose();
    textContentFocusNode.dispose();
    tagFocusNode.dispose();
    isTextPostComplete.dispose();
    isImagePostComplete.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: AppValues.createPostTabBarItemCount,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
                title: const Text('Create Post'),
                centerTitle: true,
                actions: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(right: AppPaddings.medium),
                      child: Tooltip(
                          message:
                              'A post can be created when all fields necessary are filled.',
                          child: CustomIconButton(
                              icon: IconLibrary.send,
                              onPressed: () {},
                              color: (isTextPostComplete.value ||
                                      isImagePostComplete.value)
                                  ? Theme.of(context).iconTheme.color
                                  : Theme.of(context).disabledColor,
                              sizeType: SizeType.large)))
                ]),
            body: Column(children: [
              const CreatePostTabBar(),
              Expanded(
                  child: TabBarView(children: [
                const Text('image'),
                //ImageBodyCreatePost(pickImages: pickImages, images: images, controller: controller, activeImageAspectRatio: activeImageAspectRatio, onAspectRatioChanged: onAspectRatioChanged, removeImage: removeImage, addImages: addImages)
                TextBodyCreatePost(
                  isPostComplete: isTextPostComplete,
                  pageViewController: textPostController,
                  titleFocusNode: titleFocusNode,
                  tagFocusNode: tagFocusNode,
                  titleController: titleController,
                  textContentController: textContentController,
                  tagController: tagController,
                )
              ]))
            ])));
  }
}
