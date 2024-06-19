import 'package:flutter/material.dart';


class RightTopBlocks extends StatelessWidget {
  final double height;
  final double width;

  RightTopBlocks({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          color: Colors.red,
        ),
        Container(
          height: height,
          width: width,
          color: Colors.green,
        ),
        Container(
          height: height,
          width: width,
          color: Colors.yellow,
        )
      ],
    );
  }
}