import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_list.dart';

class CreditsSourceSection extends StatelessWidget {
  const CreditsSourceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: AppPaddings.large),
        SizedBox(height: 200, child: SourceList()),
        SizedBox(height: AppPaddings.large),
      ],
    );
  }
}
