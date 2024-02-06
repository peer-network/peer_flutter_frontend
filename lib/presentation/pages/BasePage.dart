import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final bool makeScrollable;
  const BasePage(
      {super.key,
      required this.child,
      this.bottomNavigationBar,
      this.appBar,
      this.makeScrollable = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: makeScrollable
            ? SingleChildScrollView(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height -
                        kBottomNavigationBarHeight,
                    child: child),
              )
            : child,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
