import 'package:flutter/material.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_image_post_body.dart';
import 'package:peer_app/presentation/pages/create_post_page/create_post_bottom_navbar.dart';
import 'package:peer_app/presentation/routing/routes/page_routes.dart';
import 'package:peer_app/presentation/whitelabel/components/appbars/secondary_appbar.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  CreatePostType activeCreatePostType = CreatePostType.image;

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
      appBar: const SecondaryAppbar(
        title: "Beitrag teilen",
      ),
      makeScrollable: false,
      child: _buildCreatePostBody(),
    );
  }

  Widget _buildCreatePostBody() {
    switch (activeCreatePostType) {
      case CreatePostType.image:
        return CreateImagePostBody(onImageSelected: () {
          Navigator.of(context).push(CreateImagePostPageRoute());
        });
      case CreatePostType.text:
        return Container();
    }
  }
}
