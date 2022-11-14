import 'package:flutter/material.dart';

class ExampleB extends StatefulWidget {
  const ExampleB({Key? key}) : super(key: key);

  @override
  State<ExampleB> createState() => _ExampleBState();
}

class _ExampleBState extends State<ExampleB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "B for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "B",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "all",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("asset/ball.png"),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
