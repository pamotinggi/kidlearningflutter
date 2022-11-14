import 'package:flutter/material.dart';

class ExampleH extends StatefulWidget {
  const ExampleH({Key? key}) : super(key: key);

  @override
  State<ExampleH> createState() => _ExampleHState();
}

class _ExampleHState extends State<ExampleH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for H"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "H for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ug",
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
                    image: AssetImage("asset/hug.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
