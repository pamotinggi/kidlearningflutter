import 'package:flutter/material.dart';

class ExampleE extends StatefulWidget {
  const ExampleE({Key? key}) : super(key: key);

  @override
  State<ExampleE> createState() => _ExampleEState();
}

class _ExampleEState extends State<ExampleE> {
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
                  "E for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "gg",
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
                    image: AssetImage("asset/egg.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
