import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/line_chart.dart';

class AccountDevelopment extends StatelessWidget {
  const AccountDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text('Entwicklung\ndeines Accounts',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: CustomColors.lightTextColor)),
            )),
        const SizedBox(height: AppPaddings.small + 10),
        CustomLineChart()
      ],
    );
  }
}
