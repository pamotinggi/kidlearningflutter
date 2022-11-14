import 'package:flutter/material.dart';

class ExampleP extends StatefulWidget {
  const ExampleP({Key? key}) : super(key: key);

  @override
  State<ExampleP> createState() => _ExamplePState();
}

class _ExamplePState extends State<ExampleP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for P"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "P for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "P",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "anda",
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
                    image: AssetImage("asset/panda.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
