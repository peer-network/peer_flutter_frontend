import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';

class TextContentBox extends StatelessWidget {
  final String text;
  final double width;
  final double height;

  const TextContentBox({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradientColor = Theme.of(context).brightness == Brightness.light //TODO use correct colors
        ? LightColors.backgroundContainer
        : DarkColors.backgroundContainer;

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(8.0), //TODO use correct size
      child: Stack(
        children: [
          Text(
            text,
            maxLines: 6,
            overflow: TextOverflow.fade,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 20, //TODO use correct colors
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent, //TODO use correct colors
                    gradientColor.withOpacity(0.7)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
