///home/gregory/Documents/PEER/flutter_app-1/assets/images/empty_image.png

import 'package:flutter/material.dart';

class LeftBlock extends StatelessWidget {
  //final String imagePath;

  const LeftBlock({
    Key? key,
    //required this.imagePath
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Container(
          width: width, // Use the constraints to set width and height
          height: height,
          color: Colors.blue,
          // child: Image.asset(
          //   imagePath,
          //   fit: BoxFit.cover,
          // ),
        );
      },
    );
  }
}
