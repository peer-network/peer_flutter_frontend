import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/credits_source_section.dart/components/source_list.dart';

class CreditsSourceSection extends StatelessWidget {
  const CreditsSourceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text('Your Wallet\ncomposition',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
            )),
        const SizedBox(height: 200, child: SourceList()),
        const SizedBox(height: AppPaddings.large),
      ],
    );
  }
}
