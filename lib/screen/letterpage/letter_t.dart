import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/example/examplet.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronouncet.dart';
import 'package:kidlearningflutter/screen/writeletter/write_t.dart';

class LetterT extends StatefulWidget {
  const LetterT({Key? key}) : super(key: key);

  @override
  State<LetterT> createState() => _LetterTState();
}

class _LetterTState extends State<LetterT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Everything about T"),
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
                    image: AssetImage("letterT.png"),
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
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => WriteT()));
                },
                child: Text(
                  "Write T",
                  style: TextStyle(
                    fontSize: 20,
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
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => PronounceT()));
                },
                child: Text(
                  "Pronounce T",
                  style: TextStyle(
                    fontSize: 20,
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
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ExampleT()));
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
