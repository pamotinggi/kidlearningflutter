import 'package:flutter/material.dart';

class ExamapleA extends StatefulWidget {
  const ExamapleA({Key? key}) : super(key: key);

  @override
  State<ExamapleA> createState() => _ExamapleAState();
}

class _ExamapleAState extends State<ExamapleA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example for A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "A for ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "A",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("pple", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 3,),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("asset/apple.png"),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
