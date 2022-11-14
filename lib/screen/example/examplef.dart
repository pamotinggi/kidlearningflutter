import 'package:flutter/material.dart';

class ExampleF extends StatefulWidget {
  const ExampleF({Key? key}) : super(key: key);

  @override
  State<ExampleF> createState() => _ExampleFState();
}

class _ExampleFState extends State<ExampleF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for F"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "F for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "F",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "erry",
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
                    image: AssetImage("asset/ferry.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
