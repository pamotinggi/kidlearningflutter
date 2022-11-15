import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/screen/profilescreen.dart';
import 'package:kidlearningflutter/screen/sentenceslevel/sentencelvl1.dart';
import 'package:kidlearningflutter/screen/sentenceslevel/sentencelvl2.dart';
import 'package:kidlearningflutter/screen/sentenceslevel/sentencelvl3.dart';
import 'package:kidlearningflutter/screen/sentenceslevel/sentencelvl4.dart';
import 'package:kidlearningflutter/screen/sentenceslevel/sentencelvl5.dart';
import 'package:kidlearningflutter/screen/sentencetestlevel.dart';

class SentenceSreen extends StatefulWidget {
  @override
  _SentenceScreen createState() => _SentenceScreen();
}

class _SentenceScreen extends State<SentenceSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Simple Sentences"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            }),
      ),
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xff3B3486),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/sentencenew.png"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Sentencelvl1()));
                    },
                    child: Text(
                      "Level 1",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Sentencelvl2()));
                    },
                    child: Text(
                      "Level 2",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Sentencelvl3()));
                    },
                    child: Text(
                      "Level 3",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Sentencelvl4()));
                    },
                    child: Text(
                      "Level 4",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Sentencelvl5()));
                    },
                    child: Text(
                      "Level 5",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        backgroundColor: Colors.blueAccent,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.people),
              label: 'Profile',
              backgroundColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              }),
        ],
      ),
    );
  }
}
