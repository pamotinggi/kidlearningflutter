import 'package:flutter/material.dart';

class ExampleK extends StatefulWidget {
  const ExampleK({Key? key}) : super(key: key);

  @override
  State<ExampleK> createState() => _ExampleKState();
}

class _ExampleKState extends State<ExampleK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for K"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "K for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "K",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ite",
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
                    image: AssetImage("asset/kite.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
