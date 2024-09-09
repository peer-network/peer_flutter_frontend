import 'package:flutter/material.dart';

class AspectRatioTile extends StatelessWidget {
  final Widget child;
  final double aspectRatio;

  const AspectRatioTile(
      {super.key, required this.child, required this.aspectRatio});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        child: child,
      ),
    );
  }
}
