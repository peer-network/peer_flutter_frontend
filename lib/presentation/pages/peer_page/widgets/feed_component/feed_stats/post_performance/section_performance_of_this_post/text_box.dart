import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class TextContentBox extends StatelessWidget {
  final String text;
  final double width;
  final double height;

  const TextContentBox({
    super.key,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(AppPaddings.small),
      child: Stack(
        children: [
          Text(
            text,
            maxLines: 6,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
