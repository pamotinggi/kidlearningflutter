import 'package:audioplayers/audioplayers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class PronounceZ extends StatefulWidget {
  const PronounceZ({Key? key}) : super(key: key);

  @override
  State<PronounceZ> createState() => _PronounceZState();
}

class _PronounceZState extends State<PronounceZ> {
  late AudioPlayer advancedPlayer;
  late AudioCache audioCache;

  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Pronounce Z"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/letterZ.png"),
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    audioCache.play("letterZ.mp3");
                  },
                  icon: Icon(EvaIcons.playCircle, size: 30, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {
                    advancedPlayer.pause();
                  },
                  icon:
                  Icon(EvaIcons.pauseCircle, size: 30, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {
                    advancedPlayer.stop();
                  },
                  icon: Icon(EvaIcons.stopCircle, size: 30, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
