import 'package:flutter/material.dart';
import 'package:peer_app/presentation/pages/BasePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      makeScrollable: true,
      child: Column(
        children: [],
      ),
    );
  }
}
