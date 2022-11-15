import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/example/examplej.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronouncej.dart';
import 'package:kidlearningflutter/screen/writeletter/write_j.dart';

class LetterJ extends StatefulWidget {
  const LetterJ({Key? key}) : super(key: key);

  @override
  State<LetterJ> createState() => _LetterJState();
}

class _LetterJState extends State<LetterJ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Everything about J"),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 80,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/letterJ.png"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => WriteJ()));
                    },
                    child: Text(
                      "Write J",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PronounceJ()));
                    },
                    child: Text(
                      "Pronounce J",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ExampleJ()));
                    },
                    child: Text(
                      "Example",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
