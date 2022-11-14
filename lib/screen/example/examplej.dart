import 'package:flutter/material.dart';

class ExampleJ extends StatefulWidget {
  const ExampleJ({Key? key}) : super(key: key);

  @override
  State<ExampleJ> createState() => _ExampleJState();
}

class _ExampleJState extends State<ExampleJ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for E"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "J for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "J",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "aguar",
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
                    image: AssetImage("asset/jaguar.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
