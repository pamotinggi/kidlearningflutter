import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/profile_extension/levelscreen.dart';

class Sentencelevel extends StatefulWidget {
  const Sentencelevel({Key? key}) : super(key: key);

  @override
  State<Sentencelevel> createState() => _SentencelevelState();
}

class _SentencelevelState extends State<Sentencelevel> {
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
                .push(MaterialPageRoute(builder: (context) => Levelscreen()));
          },
        ),
        title: Text("Sentence Level Guide"),
      ),
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xff3B3486),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "1. Choose the level of Sentence Quiz you want to do.",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      child: Image.asset('asset/sentencelevel.png',fit: BoxFit.contain,),
                      alignment: Alignment.center,
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      child: Text(
                        "2. Answer all of the question.",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      child: Image.asset('asset/sentencescore.png',fit: BoxFit.contain,),
                      alignment: Alignment.center,
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      child: Text(
                        "3. Enter the student name and submit the score",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      child: Image.asset('asset/submitscore.png',fit: BoxFit.contain,),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
