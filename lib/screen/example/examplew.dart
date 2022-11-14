import 'package:flutter/material.dart';

class ExampleW extends StatefulWidget {
  const ExampleW({Key? key}) : super(key: key);

  @override
  State<ExampleW> createState() => _ExampleWState();
}

class _ExampleWState extends State<ExampleW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for W"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "W for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "alrus",
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
                    image: AssetImage("asset/walrus.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
