import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/profile_pages/own_profile_page/wallet/chart_section/components/balance_per_day.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';
import 'package:peer_app/data/dummy_response/dummy_wallet.dart';
import 'package:peer_app/data/models/wallet_model.dart';

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
        curve: Curves.easeIn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Extract the tokensPerDay data from the dummy wallet
    final tokensPerDay = WalletModel.fromJson(gregorDummyWallet).tokensPerDay ?? {};

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: widget.maxHeight,
          child: PageView(
            controller: _pageViewController,
            children: [
              BalancePerDay(tokensPerDay: tokensPerDay),
            ],
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            1,
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
