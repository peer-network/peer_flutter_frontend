import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/exchange_rate.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/account_development.dart';

class ChartSwitcher extends StatefulWidget {
  final double maxHeight;
  const ChartSwitcher({Key? key, required this.maxHeight}) : super(key: key);

  @override
  State<ChartSwitcher> createState() => _ChartSwitcherState();
}

class _ChartSwitcherState extends State<ChartSwitcher> {
  final PageController _pageViewController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  void changePage(int page) {
    _currentPage = page;
    _pageViewController.animateToPage(page,
        duration: Durations.medium2,
        curve: Curves.linear); //TODO: fix animation ya seleme (looks ass atm)
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: widget.maxHeight,
          child: PageView(
            controller: _pageViewController,
            children: const [ExchangeRate(), AccountDevelopment()],
            onPageChanged: (page) {
              changePage(page);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
            (index) => GestureDetector(
              onTap: () => changePage(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.all(AppPaddings.tiny),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.grey[200] : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
