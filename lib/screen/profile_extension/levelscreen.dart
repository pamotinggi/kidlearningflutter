import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/level_guide/sentence_level.dart';

import '../profilescreen.dart';

class Levelscreen extends StatefulWidget {
  const Levelscreen({Key? key}) : super(key: key);

  @override
  State<Levelscreen> createState() => _LevelscreenState();
}

class _LevelscreenState extends State<Levelscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
        ),
        title: Text("Level Guide"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Sentencelevel()));
                  },
                  child: Text(
                    "Sentence Levels",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Games Levels",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
