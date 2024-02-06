import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final Widget icon;
  final String label;

  const CustomNavigationBar(
      {super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [NavigationDestination(icon: icon, label: label)],
    );
  }
}
