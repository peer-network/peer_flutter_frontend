import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/models/user_model.dart';

import 'package:peer_app/presentation/pages/BasePage.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_logic/first_layer_comment.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/caspar_heart.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/comment_middle_section.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailed_image_page/components/comments_single_components/user_image.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/stats_section/components/custom_button.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/secondary_button.dart';
import 'package:peer_app/presentation/whitelabel/components/custom_toast.dart';
import 'package:peer_app/presentation/whitelabel/components/date/time_passed_since_text_widget.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/whitelabel/components/buttons/custom_icon_button.dart';
import 'package:peer_app/presentation/whitelabel/components/types/size_types.dart';
import 'package:peer_app/presentation/whitelabel/icon_library.dart';

class DetailedImagePage extends StatelessWidget {
  final PostModel post;

  const DetailedImagePage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: AppBar(
          title: const Text('Image Details'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network((post as ImagePost).imageUrls[0]),
              const SizedBox(height: AppPaddings.extraLarge),
              FirstLayerComment(comments: post.comments),
            ],
          ),
        ));
  }
}
