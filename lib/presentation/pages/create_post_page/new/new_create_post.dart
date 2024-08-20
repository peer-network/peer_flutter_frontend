import 'package:flutter/material.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_bottom_navbar.dart';
import 'package:peer_app/presentation/pages/create_post_page/new/tab_item.dart';
import 'package:peer_app/presentation/pages/create_post_page/text_body_create_post.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  CreatePostType activeCreatePostType = CreatePostType.image;
  PageController postTypeController = PageController();
  PageController textPostController = PageController();
  ValueNotifier<bool> isPostComplete = ValueNotifier<bool>(false);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController textContentController = TextEditingController();
  final TextEditingController tagController = TextEditingController();
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode textContentFocusNode = FocusNode();
  final FocusNode tagFocusNode = FocusNode();
  ValueNotifier<bool> isPostBeingCreated = ValueNotifier<bool>(false);
  bool isTextPostControllerInitialized = false; // Flag to track initialization

  @override
  void initState() {
    super.initState();
    textContentController.addListener(() {
      setState(() {
        isPostBeingCreated.value = textContentController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    postTypeController.dispose();
    textPostController.dispose();
    titleController.dispose();
    textContentController.dispose();
    tagController.dispose();
    titleFocusNode.dispose();
    textContentFocusNode.dispose();
    tagFocusNode.dispose();
    isPostComplete.dispose();
    isPostBeingCreated.dispose();
    super.dispose();
  }

  void onPostTypeChanged(CreatePostType type) {
    setState(() {
      activeCreatePostType = type;
      if (type == CreatePostType.image) {
        postTypeController.animateToPage(0,
            duration: AppDuration.postCreationTransitionDuration,
            curve: Curves.linear);
      } else if (type == CreatePostType.text) {
        postTypeController.animateToPage(1,
            duration: AppDuration.postCreationTransitionDuration,
            curve: Curves.linear);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create Post'),
          centerTitle: true,
          /*leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),*/
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: AppPaddings.medium),
              child: Tooltip(
                message:
                    'A post can be created when all fields necessary are filled.',
                child: CustomIconButton(
                    icon: IconLibrary.send,
                    onPressed: () {},
                    color: (isPostComplete.value)
                        ? Theme.of(context).iconTheme.color
                        : Theme.of(context).disabledColor,
                    sizeType: SizeType.large),
              ),
            )
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: AppPaddings.medium),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: AppPaddings.medium),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color:
                      Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Theme.of(context).colorScheme.secondary,
                  tabs: [
                    Tab(child: Text('Image')),
                    Tab(child: Text('Text')),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Text('image'),
                TextBodyCreatePost(
                    isPostComplete: isPostComplete,
                    pageViewController: textPostController,
                    titleFocusNode: titleFocusNode,
                    tagFocusNode: tagFocusNode,
                    titleController: titleController,
                    textContentController: textContentController,
                    tagController: tagController,
                    onPostCreationStarted: (bool value) {
                      setState(() {
                        isPostBeingCreated.value = value;
                      });
                    })
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

/*
PageView.builder(
          controller: postTypeController,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const Text('Image Post');
            } else if (index == 1) {
              // Mark the PageController as initialized
              if (!isTextPostControllerInitialized) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() {
                    isTextPostControllerInitialized = true;
                  });
                });
              }

              return TextBodyCreatePost(
                isPostComplete: isPostComplete,
                pageViewController: textPostController,
                titleFocusNode: titleFocusNode,
                textContentFocusNode: textContentFocusNode,
                tagFocusNode: tagFocusNode,
                titleController: titleController,
                textContentController: textContentController,
                tagController: tagController,
                onPostCreationStarted: (bool value) {
                  setState(() {
                    isPostBeingCreated.value = value;
                  });
                },
              );
            }
            return Container(); // Return empty container if index does not match
          },
        ),
        bottomNavigationBar: CreatePostBottomNavbar(
          onTypeChanged: (type) => onPostTypeChanged(type),
          activeCreatePostType: activeCreatePostType,
          isPostBeingCreated: isPostBeingCreated,
        ),*/