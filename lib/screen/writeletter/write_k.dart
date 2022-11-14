import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WriteK extends StatefulWidget {
  const WriteK({Key? key}) : super(key: key);

  @override
  State<WriteK> createState() => _WriteKState();
}

class _WriteKState extends State<WriteK> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/kidlearnflutter.appspot.com/o/write_letter%2FletterK.mp4?alt=media&token=ec7dcbfb-c96a-4cd2-a9ed-015c7881f8f3')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to write K"),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? EvaIcons.pauseCircle : EvaIcons.playCircle,
        ),
      ),
    );
  }
}
