import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/line_chart.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_blocked_users.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_change_email.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_change_password.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_delete_profie.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_exclude_content_types.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_exclude_tags.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_logout.dart';

import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_section_widget.dart';

class OptionsSectionWidgetHolder extends StatelessWidget {
  const OptionsSectionWidgetHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
                 OptionsSectionWidget(title: "Test title 1", content: ExcludeContentTypes()),
                 OptionsSectionWidget(title: "Test title 2", content: BlockedUsersSection()),
                 OptionsSectionWidget(title: "Test title 3", content: ExcludeTagsSection()),
                 OptionsSectionWidget(title: "Test title 4", content: ChangeEmailSection()),
                 OptionsSectionWidget(title: "Test title 5", content: ChangePasswordSection()),
                 OptionsSectionWidget(title: "Test title 6", content: LogoutSection()),
                 OptionsSectionWidget(title: "Test title 7", content: DeleteAccountSection()),
              ]
    
    );
  }
}
