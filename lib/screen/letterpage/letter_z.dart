import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/example/examplez.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronouncez.dart';
import 'package:kidlearningflutter/screen/writeletter/write_z.dart';

class LetterZ extends StatefulWidget {
  const LetterZ({Key? key}) : super(key: key);

  @override
  State<LetterZ> createState() => _LetterZState();
}

class _LetterZState extends State<LetterZ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Everything about Z"),
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
                    image: AssetImage("letterZ.png"),
                    fit: BoxFit.fill,
                  )),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => WriteZ()));
                    },
                    child: Text(
                      "Write Z",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PronounceZ()));
                    },
                    child: Text(
                      "Pronounce Z",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFE9B1),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ExampleZ()));
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
