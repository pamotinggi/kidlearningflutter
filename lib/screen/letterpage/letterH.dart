import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronounceh.dart';
import 'package:kidlearningflutter/screen/writeletter/write_h.dart';

import '../example/exampleh.dart';

class LetterH extends StatefulWidget {
  const LetterH({Key? key}) : super(key: key);

  @override
  State<LetterH> createState() => _LetterHState();
}

class _LetterHState extends State<LetterH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Everything about H"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 80,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/letterH.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => WriteH()));
                },
                child: Text(
                  "Write H",
                  style: TextStyle(
                    fontSize: 20,
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
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => PronounceH()));
                },
                child: Text(
                  "Pronounce H",
                  style: TextStyle(
                    fontSize: 20,
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
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ExampleH()));
                },
                child: Text(
                  "Example",
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
    );
  }
}
