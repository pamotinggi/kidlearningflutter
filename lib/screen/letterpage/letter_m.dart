import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/example/examplem.dart';
import 'package:kidlearningflutter/screen/pronouceletter/pronouncem.dart';
import 'package:kidlearningflutter/screen/writeletter/write_m.dart';

class LetterM extends StatefulWidget {
  const LetterM({Key? key}) : super(key: key);

  @override
  State<LetterM> createState() => _LetterMState();
}

class _LetterMState extends State<LetterM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for M"),
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
                image: AssetImage("asset/letterM.png"),
                fit: BoxFit.fill,
              )),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => WriteM()));
                },
                child: Text(
                  "Write M",
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
                      .push(MaterialPageRoute(builder: (context) => PronounceM()));
                },
                child: Text(
                  "Pronounce M",
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
                      .push(MaterialPageRoute(builder: (context) => ExampleM()));
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
