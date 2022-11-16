import 'package:flutter/material.dart';

class ExampleX extends StatefulWidget {
  const ExampleX({Key? key}) : super(key: key);

  @override
  State<ExampleX> createState() => _ExampleXState();
}

class _ExampleXState extends State<ExampleX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "X for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "X",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "-ray",
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
                    image: AssetImage("asset/xray.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
