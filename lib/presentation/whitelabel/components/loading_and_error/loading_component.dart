import 'package:flutter/material.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent(
      {super.key,
      this.onRefresh,
      this.isAppBar = true,
      this.isBottomNavBar = true});

  final Future<void> Function()? onRefresh;
  final bool isAppBar;
  final bool isBottomNavBar;

  @override
  Widget build(BuildContext context) {
    // Centering the loading indicator on the screen
    return Center(
      child: onRefresh == null
          ? SizedBox(
              // height: MediaQuery.of(context).size.height and appBar and bottomNavBar
              height: MediaQuery.of(context).size.height -
                  (isAppBar ? kToolbarHeight : 0) -
                  (isBottomNavBar ? kBottomNavigationBarHeight : 0),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            )
          : RefreshIndicator(
              onRefresh: onRefresh!,
              child: SingleChildScrollView(
                physics:
                    const AlwaysScrollableScrollPhysics(), // Ensure scrollability
                child: SizedBox(
                  // height: MediaQuery.of(context).size.height and appBar and bottomNavBar
                  height: MediaQuery.of(context).size.height -
                      (isAppBar ? kToolbarHeight : 0) -
                      (isBottomNavBar ? kBottomNavigationBarHeight : 0),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
    );
  }
}
