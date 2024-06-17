import 'package:flutter/material.dart';

class LeftBlock extends StatelessWidget {
  final double width;
  final double height;

  LeftBlock({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.blue,
    );
  }
}