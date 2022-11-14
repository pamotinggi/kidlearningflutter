import 'package:flutter/material.dart';

class ExampleO extends StatefulWidget {
  const ExampleO({Key? key}) : super(key: key);

  @override
  State<ExampleO> createState() => _ExampleOState();
}

class _ExampleOState extends State<ExampleO> {
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
                  "O for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "O",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "range",
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
                    image: AssetImage("asset/orange.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
