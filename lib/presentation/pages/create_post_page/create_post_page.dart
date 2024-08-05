import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/base_page.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/create_post_page/image_body_create_post.dart';
import 'package:peer_app/presentation/pages/create_post_page/text_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:peer_app/presentation/whitelabel/components/types/aspect_ratios.dart';
import 'package:provider/provider.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  CreatePostType activeCreatePostType = CreatePostType.image;
  ImageAspectRatios activeImageAspectRatio = ImageAspectRatios.square;

  // TEXT SECTION
  final TextEditingController textTitleController = TextEditingController();
  final TextEditingController textContentController = TextEditingController();
  final TextEditingController textTagController = TextEditingController();

  // IMAGE SECTION
  final ImagePicker _picker = ImagePicker();
  List<XFile> images = [];
  final TextEditingController imageDescriptionController =
      TextEditingController();

  Future<void> _pickImages() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();

    if (selectedImages.isNotEmpty) {
      setState(() {
        images = List.from(selectedImages);
      });
    }
  }

  Future<void> _addImages() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();

    if (selectedImages.isNotEmpty) {
      setState(() {
        images.addAll(selectedImages);
      });
    }
  }

  @override
  void dispose() {
    textTitleController.dispose();
    imageDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bottomNavigationBar: CreatePostBottomNavbar(
        activeCreatePostType: activeCreatePostType,
        onTypeChanged: (type) {
          setState(() {
            activeCreatePostType = type;
          });
        },
      ),
      appBar: SecondaryAppbar(
        title: "Create Post",
        actions: [
          LinkButtonComponent(
            text: "Post",
            textColor: Theme.of(context)
                .colorScheme
                .secondary, //TODO: check if looks correct in light theme
            onPressed: () => createPost(),
            isUnderlined: false,
          )
        ],
      ),
      child: _buildCreatePostBody(),
    );
  }

  Widget _buildCreatePostBody() {
    switch (activeCreatePostType) {
      case CreatePostType.image:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageBodyCreatePost(
              activeImageAspectRatio: activeImageAspectRatio,
              onAspectRatioChanged: (aspectRatio) {
                setState(() {
                  activeImageAspectRatio = aspectRatio;
                });
              },
              removeImage: (index) => setState(() {
                images.removeAt(index);
              }),
              pickImages: _pickImages,
              addImages: _addImages,
              images: images,
              controller: imageDescriptionController,
            ),
          ],
        );

      case CreatePostType.text:
        return TextBodyCreatePost(
            titleController: textTitleController,
            textContentController: textContentController,
            tagController: textTagController);
    }
  }

  void createPost() {
    // TODO get creatorId from auth
    int creatorId = 1;
    switch (activeCreatePostType) {
      case CreatePostType.image:
        createPostImage(creatorId);
        break;
      case CreatePostType.text:
        createPostText(creatorId);
        break;
    }
  }

  void createPostImage(int creatorId) {
    final newsFeedProvider = Provider.of<PostProvider>(context, listen: false);
    newsFeedProvider
        .createPost(
            userId: creatorId,
            postType: CreatePostType.image,
            title: "Title",
            mediaDescription: "Media Description",
            imageFiles: images)
        .then((_) {
      if (newsFeedProvider.error != null) {
        CustomToast.showErrorToast(newsFeedProvider.error!);
      } else {
        CustomToast.showSuccessToast("Post erfolgreich erstellt");
      }
    });
  }

  void createPostText(int creatorId) {
    final newsFeedProvider = Provider.of<PostProvider>(context, listen: false);
    newsFeedProvider
        .createPost(
      userId: creatorId,
      postType: CreatePostType.text,
      title: textTitleController.text,
      text: textContentController.text,
    )
        .then((_) {
      if (newsFeedProvider.error != null) {
        CustomToast.showErrorToast(newsFeedProvider.error!);
      } else {
        CustomToast.showSuccessToast("Post erfolgreich erstellt");
      }
    });
  }
}
