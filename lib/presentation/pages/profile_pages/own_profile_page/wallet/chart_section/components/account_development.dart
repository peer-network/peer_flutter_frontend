import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/chart_data/line_chart.dart';

class AccountDevelopment extends StatelessWidget {
  const AccountDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: AppPaddings.large),
              child: Text('Entwicklung\ndeines Accounts',
                  style: Theme.of(context).textTheme.headlineLarge!),
            )),
        const SizedBox(height: AppPaddings.medium),
        const CustomLineChart()
      ],
    );
  }
}
