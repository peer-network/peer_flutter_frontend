import 'package:flutter/material.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/create_post_page/text_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';
import 'package:provider/provider.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  // page view control
  CreatePostType activeCreatePostType = CreatePostType.image;
  PageController pageController = PageController();
  bool isPostComplete = false;

  // text post creation control
  final TextEditingController titleController = TextEditingController();
  final TextEditingController textContentController = TextEditingController();
  final TextEditingController tagController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.addListener(() {
      setState(() {
        isPostComplete = checkTextPostCompletion();
      });
    });
    textContentController.addListener(() {
      setState(() {
        isPostComplete = checkTextPostCompletion();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    titleController.dispose();
    textContentController.dispose();
    tagController.dispose();
    super.dispose();
  }

  void onPostTypeChanged(CreatePostType type) {
    setState(() {
      activeCreatePostType = type;
      switch (type) {
        case CreatePostType.image:
          pageController.animateToPage(0,
              duration: AppDuration.postCreationTransitionDuration,
              curve: Curves.linear);
          break;
        case CreatePostType.text:
          pageController.animateToPage(1,
              duration: AppDuration.postCreationTransitionDuration,
              curve: Curves.linear);
          break;
        default:
      }
    });
  }

  void onUserPostTypeChanged(int index) {
    setState(() {
      activeCreatePostType = CreatePostType.values[index];
    });
  }

  bool checkTextPostCompletion() {
    return titleController.text.trim().isNotEmpty &&
        textContentController.text.trim().isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: AppPaddings.medium),
            child: CustomIconButton(
                icon: IconLibrary.send,
                onPressed: () {},
                color: (isPostComplete)
                    ? Theme.of(context).iconTheme.color
                    : Theme.of(context).disabledColor,
                sizeType: SizeType.large),
          )
        ],
      ),
      body: PageView.builder(
          onPageChanged: (value) => onUserPostTypeChanged(value),
          controller: pageController,
          itemCount: 2,
          itemBuilder: (BuildContext cpContext, int index) {
            if (index == 0) {
              return const Text('Image Post');
            } else {
              return TextBodyCreatePost(
                  titleController: titleController,
                  textContentController: textContentController,
                  tagController: tagController);
            }
          }),
      bottomNavigationBar: CreatePostBottomNavbar(
        onTypeChanged: (type) => onPostTypeChanged(type),
        activeCreatePostType: activeCreatePostType,
      ),
    );
  }
}
