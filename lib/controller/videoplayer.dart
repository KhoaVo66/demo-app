import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer(VideoPlayerController controller, {super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network('https://youtu.be/MQKGiewMGi0?si=BZeAL6nOSi2PU5tL')..initialize().then((_) {
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 343,
        height: 193,
        child: _controller.value.isInitialized? VideoPlayer(_controller) : Container(),
      ),
    );
  }
}
