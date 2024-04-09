import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/data/provider/posts_provider.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/create_post_page/image_body_create_post.dart';
import 'package:peer_app/presentation/pages/create_post_page/text_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/link_button.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:provider/provider.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  CreatePostType activeCreatePostType = CreatePostType.image;

  // TEXT SECTION
  final TextEditingController textController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bottomNavigationBar: CreatePostBottomNavbar(
        activeCreatePostType: activeCreatePostType,
        onTypeChanged: (type) {
          setState(() {
            activeCreatePostType = type;
            print("activeCreatePostType: $activeCreatePostType");
          });
        },
      ),
      appBar: SecondaryAppbar(
        title: "Beitrag teilen",
        actions: [
          LinkButtonComponent(
            text: "Posten",
            onPressed: () => createPost(),
            isUnderlined: false,
          )
        ],
      ),
      makeScrollable: false,
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
              pickImages: _pickImages,
              images: images,
              controller: imageDescriptionController,
            ),
          ],
        );

      case CreatePostType.text:
        return TextBodyCreatePost(controller: textController);
    }
  }

  void createPost() {
    // TODO get creatorId from auth
    int creatorId = 1;
    switch (activeCreatePostType) {
      case CreatePostType.image:
        createPostImage();
        break;
      case CreatePostType.text:
        createPostText(creatorId);
        break;
    }
  }

  void createPostImage() {
    CustomToast.showErrorToast("Not implemented yet");
  }

  void createPostText(int creatorId) {
    final newsFeedProvider =
        Provider.of<NewsFeedProvider>(context, listen: false);
    newsFeedProvider.createPost(
      {"content": textController.text, "userId": creatorId},
    ).then((_) {
      if (newsFeedProvider.error != null) {
        CustomToast.showErrorToast(newsFeedProvider.error!);
      } else {
        CustomToast.showSuccessToast("Post erfolgreich erstellt");
      }
    });
  }
}
