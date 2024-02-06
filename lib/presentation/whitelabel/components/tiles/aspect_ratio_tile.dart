import 'package:flutter/material.dart';

class AspectRatioTile extends StatelessWidget {
  final Widget child;
  final double aspectRatio;

  const AspectRatioTile(
      {Key? key, required this.child, required this.aspectRatio})
      : super(key: key);

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
