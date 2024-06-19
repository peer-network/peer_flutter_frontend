import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String title;

  const TitleBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxHeight = constraints.maxHeight;
        final titleBarHeight = maxHeight / 6;

        return
        Container(
          height: titleBarHeight,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        );
      },
    );
  }
}
