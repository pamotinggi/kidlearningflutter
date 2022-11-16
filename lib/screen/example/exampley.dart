import 'package:flutter/material.dart';

class ExampleY extends StatefulWidget {
  const ExampleY({Key? key}) : super(key: key);

  @override
  State<ExampleY> createState() => _ExampleYState();
}

class _ExampleYState extends State<ExampleY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for Y"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Y for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Y",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ogurt",
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
                    image: AssetImage("asset/yogurt.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
