import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_switcher.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppPaddings.large),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.425,
            child: ChartSwitcher(
                maxHeight: MediaQuery.of(context).size.height * 0.4)),
        const SizedBox(height: AppPaddings.large),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text('Woher kommen deine Credits?',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.secondary)),
        ),
      ],
    );
  }
}
