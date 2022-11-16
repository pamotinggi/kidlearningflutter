import 'package:flutter/material.dart';

class ExampleZ extends StatefulWidget {
  const ExampleZ({Key? key}) : super(key: key);

  @override
  State<ExampleZ> createState() => _ExampleZState();
}

class _ExampleZState extends State<ExampleZ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for Z"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Z for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Z",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ebra",
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
                    image: AssetImage("asset/zebra.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
