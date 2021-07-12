import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Iniciocap1 extends StatefulWidget {
  @override
  _Iniciocap1State createState() => _Iniciocap1State();
}

class _Iniciocap1State extends State<Iniciocap1> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    iniciaVideo();
  }

  iniciaVideo() async {
    _controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setLooping(true);
    _controller.setVolume(1.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capitulo 1"),
      ),
      body: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
