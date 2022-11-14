import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/viewdata/gamescorelvl1.dart';
import 'package:kidlearningflutter/screen/viewdata/gamescorelvl2.dart';
import 'package:kidlearningflutter/screen/viewdata/gamescorelvl3.dart';

class Gamescoremain extends StatefulWidget {
  const Gamescoremain({Key? key}) : super(key: key);

  @override
  State<Gamescoremain> createState() => _GamescoremainState();
}

class _GamescoremainState extends State<Gamescoremain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Score"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 190,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Gamescorelvl1()));
                  },
                  child: Text(
                    "Level 1",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 190,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Gamescorelvl2()));
                  },
                  child: Text(
                    "Level 2",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 190,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Gamescorelvl3()));
                  },
                  child: Text(
                    "Level 3",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
