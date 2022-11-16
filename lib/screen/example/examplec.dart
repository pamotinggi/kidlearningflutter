import 'package:flutter/material.dart';

class ExampleC extends StatefulWidget {
  const ExampleC({Key? key}) : super(key: key);

  @override
  State<ExampleC> createState() => _ExampleCState();
}

class _ExampleCState extends State<ExampleC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for C"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "C for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "C",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ar",
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
                image: AssetImage("asset/car.png"),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
