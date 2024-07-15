import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  const BasePage({
    super.key,
    required this.child,
    this.bottomNavigationBar,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).colorScheme.background,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
