import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/profile_extension/score_main.dart';
import 'package:kidlearningflutter/screen/viewdata/senscorelvl4.dart';
import 'package:kidlearningflutter/screen/viewdata/senscorelvl5.dart';

import '../viewdata/senscorelvl1.dart';
import '../viewdata/senscorelvl2.dart';
import '../viewdata/senscorelvl3.dart';

class SentenceScoreMain extends StatefulWidget {
  const SentenceScoreMain({Key? key}) : super(key: key);

  @override
  State<SentenceScoreMain> createState() => _SentenceScoreMainState();
}

class _SentenceScoreMainState extends State<SentenceScoreMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ScoreMain()));
          },
        ),
        title: Text("Sentence Score"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Senscorelvl1()));
                      },
                      child: Text("LEVEL 1"),
                    ),
                  ),
                  SizedBox(width: 30),
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Senscorelvl2()));
                      },
                      child: Text("LEVEL 2"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Senscorelvl3()));
                      },
                      child: Text("LEVEL 3"),
                    ),
                  ),
                  SizedBox(width: 30),
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Senscorelvl4()));
                      },
                      child: Text("LEVEL 4"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 90,
                height: 90,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Senscorelvl5()));
                  },
                  child: Text("Level 5"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
