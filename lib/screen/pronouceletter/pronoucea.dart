import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PronounceA extends StatefulWidget {
  @override
  _PronounceA createState() => _PronounceA();
}

class _PronounceA extends State<PronounceA> {
  //object untuk audio player
  late AudioPlayer advancedPlayer;
  late AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("How to Pronounce A"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/letterA.png"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    audioCache.play('letterA.mp3'); // untuk play audio
                  },
                  icon: Icon(
                    EvaIcons.playCircle,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    advancedPlayer.pause(); // untuk pause audio
                  },
                  icon:
                      Icon(EvaIcons.pauseCircle, size: 30, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {
                    advancedPlayer.stop(); // untuk stop audio, kalau tekan play lepas tekan stop, audio akan mula dari awal
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
