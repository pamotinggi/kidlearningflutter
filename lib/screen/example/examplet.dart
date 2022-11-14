import 'package:flutter/material.dart';

class ExampleT extends StatefulWidget {
  const ExampleT({Key? key}) : super(key: key);

  @override
  State<ExampleT> createState() => _ExampleTState();
}

class _ExampleTState extends State<ExampleT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for T"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "T for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "iger",
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
                    image: AssetImage("asset/tiger.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
