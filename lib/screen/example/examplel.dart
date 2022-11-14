import 'package:flutter/material.dart';

class ExampleL extends StatefulWidget {
  const ExampleL({Key? key}) : super(key: key);

  @override
  State<ExampleL> createState() => _ExampleLState();
}

class _ExampleLState extends State<ExampleL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for L"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "L for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "L",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ion",
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
                    image: AssetImage("asset/lion.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
