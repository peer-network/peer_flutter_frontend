import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// WORK IN PROGRESS

class FeedContentVideoWidget extends StatefulWidget {
  final String videoUrl;
  const FeedContentVideoWidget({super.key, required this.videoUrl});

  @override
  State<FeedContentVideoWidget> createState() => _FeedContentVideoWidgetState();
}

class _FeedContentVideoWidgetState extends State<FeedContentVideoWidget> {
  late VideoPlayerController _controller;
  late Future<void>
      _initializeVideoPlayerFuture; // used when video is a feature in the app

  @override
  void initState() {
    Uri videoUri = Uri.parse(widget.videoUrl);
    super.initState();
    _controller = VideoPlayerController.networkUrl(videoUri);
    _initializeVideoPlayerFuture = _controller.initialize();
    // _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          _controller.play();
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );*/
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text("Videos are currently not supported."));
  }
}
