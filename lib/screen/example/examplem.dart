import 'package:flutter/material.dart';

class ExampleM extends StatefulWidget {
  const ExampleM({Key? key}) : super(key: key);

  @override
  State<ExampleM> createState() => _ExampleMState();
}

class _ExampleMState extends State<ExampleM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for M"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "M for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "M",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "onkey",
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
                    image: AssetImage("asset/monkey.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
