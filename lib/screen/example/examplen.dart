import 'package:flutter/material.dart';

class ExampleN extends StatefulWidget {
  const ExampleN({Key? key}) : super(key: key);

  @override
  State<ExampleN> createState() => _ExampleNState();
}

class _ExampleNState extends State<ExampleN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for N"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "N for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "N",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ose",
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
                    image: AssetImage("asset/nose.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
