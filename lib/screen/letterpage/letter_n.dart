import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/example/examplen.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronouncen.dart';
import 'package:kidlearningflutter/screen/writeletter/write_n.dart';

class LetterN extends StatefulWidget {
  const LetterN({Key? key}) : super(key: key);

  @override
  State<LetterN> createState() => _LetterNState();
}

class _LetterNState extends State<LetterN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Everything about N"),
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
                    image: AssetImage("asset/letterN.png"),
                    fit: BoxFit.fill,
                  )),
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
                          MaterialPageRoute(builder: (context) => WriteN()));
                    },
                    child: Text(
                      "Write N",
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
                          builder: (context) => PronounceN()));
                    },
                    child: Text(
                      "Pronounce N",
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
                          MaterialPageRoute(builder: (context) => ExampleN()));
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
