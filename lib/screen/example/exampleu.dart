import 'package:flutter/material.dart';

class ExampleU extends StatefulWidget {
  const ExampleU({Key? key}) : super(key: key);

  @override
  State<ExampleU> createState() => _ExampleUState();
}

class _ExampleUState extends State<ExampleU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for U"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "U for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "U",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "mbrella",
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
                    image: AssetImage("asset/umbre.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
