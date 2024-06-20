///home/gregory/Documents/PEER/flutter_app-1/assets/images/empty_image.png

import 'package:flutter/material.dart';



class LeftBlock extends StatelessWidget {
  final String imageUrl;

  const LeftBlock({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return Container(
          width: width,
          height: height,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Text('Image not available'));
            },
          ),
        );
      },
    );
  }
}


// class LeftBlock extends StatelessWidget {
//   const LeftBlock({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         double width = constraints.maxWidth;
//         double height = constraints.maxHeight;

//         return Container(
//           width: width,
//           height: height,
//           color: Colors.blue,
//         );
//       },
//     );
//   }
// }


