import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/profile_extension/gamescoremain.dart';
import 'package:kidlearningflutter/screen/profile_extension/sentencescoremain.dart';
import 'package:kidlearningflutter/screen/profilescreen.dart';
import 'package:kidlearningflutter/screen/viewdata/senscorelvl1.dart';

class ScoreMain extends StatefulWidget {
  const ScoreMain({Key? key}) : super(key: key);

  @override
  State<ScoreMain> createState() => _ScoreMainState();
}

class _ScoreMainState extends State<ScoreMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
        ),
        title: Text("Score Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFE9B1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => SentenceScoreMain()));
                  },
                  child: Center(
                    child: Text(
                      "Sentence Score",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFE9B1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Gamescoremain()));
                  },
                  child: Text(
                    "Game Score",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
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
