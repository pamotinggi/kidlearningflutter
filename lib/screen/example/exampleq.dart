import 'package:flutter/material.dart';

class ExampleQ extends StatefulWidget {
  const ExampleQ({Key? key}) : super(key: key);

  @override
  State<ExampleQ> createState() => _ExampleQState();
}

class _ExampleQState extends State<ExampleQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        title: Text("Example for Q"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Q for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Q",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ueen",
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
                    image: AssetImage("asset/queen.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
