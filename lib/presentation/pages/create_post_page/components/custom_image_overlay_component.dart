import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageOverlayComponent extends StatefulWidget {
  final XFile image;

  const CustomImageOverlayComponent({Key? key, required this.image})
      : super(key: key);

  @override
  State<CustomImageOverlayComponent> createState() =>
      _CustomImageOverlayComponentState();
}

class _CustomImageOverlayComponentState
    extends State<CustomImageOverlayComponent> {
  Offset offset = Offset.zero; // Tracks position of the visible box
  ui.Image? loadedImage;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final bytes = await File(widget.image.path).readAsBytes();
    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    setState(() {
      loadedImage = frame.image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          offset += details.delta;
          offset = Offset(
            offset.dx
                .clamp(0, screenSize.width - 100), // Assuming box width is 100
            offset.dy.clamp(
                0, screenSize.height - 133), // Assuming box height is 133
          );
        });
      },
      child: loadedImage == null
          ? const Center(child: CircularProgressIndicator())
          : CustomPaint(
              painter: ImagePainter(loadedImage!, offset),
              child: SizedBox(
                width: screenSize.width,
                height: screenSize.height,
              ),
            ),
    );
  }
}

class ImagePainter extends CustomPainter {
  final ui.Image image;
  final Offset offset;

  ImagePainter(this.image, this.offset);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.colorFilter =
        const ColorFilter.mode(Colors.grey, BlendMode.saturation);
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );

    // Highlighted area with normal colors
    paint.colorFilter = null;
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(
          offset.dx,
          offset.dy,
          100, // Box width
          133 // Box height
          ),
      Rect.fromLTWH(
          offset.dx,
          offset.dy,
          100, // Box width
          133 // Box height
          ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
