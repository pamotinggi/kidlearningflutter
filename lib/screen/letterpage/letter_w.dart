import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/example/examplew.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronouncew.dart';
import 'package:kidlearningflutter/screen/writeletter/write_w.dart';

class LetterW extends StatefulWidget {
  const LetterW({Key? key}) : super(key: key);

  @override
  State<LetterW> createState() => _LetterWState();
}

class _LetterWState extends State<LetterW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Everything about W"),
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
                    image: AssetImage("letterW.png"),
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
                      .push(MaterialPageRoute(builder: (context) => WriteW()));
                },
                child: Text(
                  "Write W",
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
                      .push(MaterialPageRoute(builder: (context) => PronounceW()));
                },
                child: Text(
                  "Pronounce W",
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
                      .push(MaterialPageRoute(builder: (context) => ExampleW()));
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
