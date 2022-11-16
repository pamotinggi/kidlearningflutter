import 'package:flutter/material.dart';

class ExampleR extends StatefulWidget {
  const ExampleR({Key? key}) : super(key: key);

  @override
  State<ExampleR> createState() => _ExampleRState();
}

class _ExampleRState extends State<ExampleR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for R"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "R for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "abbit",
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
                    image: AssetImage("asset/rabbit.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
