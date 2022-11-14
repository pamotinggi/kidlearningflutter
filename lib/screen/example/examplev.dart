import 'package:flutter/material.dart';

class ExampleV extends StatefulWidget {
  const ExampleV({Key? key}) : super(key: key);

  @override
  State<ExampleV> createState() => _ExampleVState();
}

class _ExampleVState extends State<ExampleV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for V"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "V for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "V",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "iolin",
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
                    image: AssetImage("asset/violin.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
