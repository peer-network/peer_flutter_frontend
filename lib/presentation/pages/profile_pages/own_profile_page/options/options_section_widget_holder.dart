import 'package:flutter/material.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_income_sources/income_sources.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_history/line_chart.dart';
import 'package:peer_app/presentation/pages/peer_page/widgets/feed_component/feed_stats/post_performance/section_performance_of_this_post/performance_of_this_post.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_blocked_users/section_blocked_users.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_change_email/section_change_email.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_change_password/section_change_password.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_delete_profile/section_delete_account.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_exclude_content_types/section_exclude_content_types.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_excluded_tags/section_exclude_tags.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/section_logout/section_logout.dart';

import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/options/options_section_widget.dart';

class OptionsSectionWidgetHolder extends StatelessWidget {
  const OptionsSectionWidgetHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      const SizedBox(height: AppPaddings.medium),
      OptionsSectionWidget(title: "Exclude Content-Types", content: ExcludeContentTypes()),
      OptionsSectionWidget(title: "", content: BlockedUsersSection()),
      OptionsSectionWidget(title: "Exclude Tags", content: ExcludeTagsSection()),
      OptionsSectionWidget(title: "Change E-Mail Address", content: ChangeEmailSection()),
      OptionsSectionWidget(title: "Change Password", content: ChangePasswordSection()),
      OptionsSectionWidget(title: "Log Out", content: LogoutSection()),
      OptionsSectionWidget(title: "Delete Account", content: DeleteAccountSection()),
      ]
    );
  }
}
