import 'package:flutter/material.dart';

class ExampleS extends StatefulWidget {
  const ExampleS({Key? key}) : super(key: key);

  @override
  State<ExampleS> createState() => _ExampleSState();
}

class _ExampleSState extends State<ExampleS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for S"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "S for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "S",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "nake",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/snake.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
