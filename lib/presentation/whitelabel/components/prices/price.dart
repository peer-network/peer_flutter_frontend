import 'package:flutter/material.dart';

class PriceWithCurrency extends StatelessWidget {
  final String text;

  const PriceWithCurrency({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
