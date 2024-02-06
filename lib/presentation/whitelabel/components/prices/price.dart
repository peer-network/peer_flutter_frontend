import 'package:flutter/material.dart';

class PriceWithCurrency extends StatelessWidget {
  final String text;

  const PriceWithCurrency({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
