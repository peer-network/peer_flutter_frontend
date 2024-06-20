///home/gregory/Documents/PEER/flutter_app-1/assets/images/empty_image.png

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LeftBlock extends StatelessWidget {
  final String imageUrl;

  const LeftBlock({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO handle other types
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        width: (MediaQuery.of(context).size.width / 2) - 30,
        height: MediaQuery.of(context).size.width / 2 - 30,
      ),
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


