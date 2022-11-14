import 'package:flutter/material.dart';

class ExampleD extends StatefulWidget {
  const ExampleD({Key? key}) : super(key: key);

  @override
  State<ExampleD> createState() => _ExampleDState();
}

class _ExampleDState extends State<ExampleD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for C"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "D for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "onkey",
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
                    image: AssetImage("asset/donkey.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
