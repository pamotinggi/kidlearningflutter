import 'package:flutter/material.dart';

class ExampleI extends StatefulWidget {
  const ExampleI({Key? key}) : super(key: key);

  @override
  State<ExampleI> createState() => _ExampleIState();
}

class _ExampleIState extends State<ExampleI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for I"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "I for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "gloo",
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
                    image: AssetImage("asset/igloo.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
