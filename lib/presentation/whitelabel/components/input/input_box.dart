import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String footnote;

  const InputBox({super.key, required this.footnote});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const TextField(), Align(child: Text(footnote))],
    );
  }
}
