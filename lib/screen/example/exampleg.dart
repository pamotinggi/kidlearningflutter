import 'package:flutter/material.dart';

class ExampleG extends StatefulWidget {
  const ExampleG({Key? key}) : super(key: key);

  @override
  State<ExampleG> createState() => _ExampleGState();
}

class _ExampleGState extends State<ExampleG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for G"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "G for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "G",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "rass",
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
                    image: AssetImage("asset/grass.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
