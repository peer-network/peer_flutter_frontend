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