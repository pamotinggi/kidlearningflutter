import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kidlearningflutter/model/gamescore_model.dart';
import 'package:kidlearningflutter/model/itemmodel.dart';

import '../games.dart';

class Game2 extends StatefulWidget {
  const Game2({Key? key}) : super(key: key);

  @override
  State<Game2> createState() => _Game2State();
}

class _Game2State extends State<Game2> {
  final TextEditingController nameController = new TextEditingController();

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;

  gameScore scoremodel = new gameScore();

  void initState() {
    super.initState();
    initGame();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.scoremodel = gameScore.fromMap(value.data());
      setState(() {});
    });
  }

  late List<ItemModel> items;
  late List<ItemModel> items2;

  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(
          icon: FontAwesomeIcons.iceCream,
          name: "ice-cream",
          value: "ice-cream"),
      ItemModel(icon: FontAwesomeIcons.burger, name: "burger", value: "burger"),
      ItemModel(icon: FontAwesomeIcons.hotdog, name: "hotdog", value: "hotdog"),
      ItemModel(icon: FontAwesomeIcons.cookie, name: "cookie", value: "cookie"),
      ItemModel(
          icon: FontAwesomeIcons.pizzaSlice, name: "pizza", value: "pizza"),
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) {
      gameOver = true;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        centerTitle: true,
        title: Text('Matching Game'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Games()));
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(children: [
              TextSpan(text: "Score: "),
              TextSpan(
                  text: "$score",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ))
            ])),
            if (!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      child: Draggable<ItemModel>(
                        data: item,
                        childWhenDragging: Icon(
                          item.icon,
                          color: Colors.grey,
                          size: 50,
                        ),
                        feedback: Icon(
                          item.icon,
                          color: Colors.teal,
                          size: 50,
                        ),
                        child: Icon(
                          item.icon,
                          color: Colors.teal,
                          size: 50,
                        ),
                      ),
                    );
                  }).toList()),
                  Spacer(),
                  Column(
                      children: items2.map((item) {
                    return DragTarget<ItemModel>(
                      onAccept: (receivedItem) {
                        if (item.value == receivedItem.value) {
                          setState(() {
                            items.remove(receivedItem);
                            items2.remove(item);
                            score += 10;
                            item.accepting = false;
                          });
                        } else {
                          setState(() {
                            score -= 5;
                            item.accepting = false;
                          });
                        }
                      },
                      onLeave: (receivedItem) {
                        setState(() {
                          item.accepting = false;
                        });
                      },
                      onWillAccept: (receivedItem) {
                        setState(() {
                          item.accepting = true;
                        });
                        return true;
                      },
                      builder: (context, acceptedItems, rejectedItem) =>
                          Container(
                        color: item.accepting ? Colors.red : Colors.teal,
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(8.0),
                        child: Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    );
                  }).toList()),
                ],
              ),
            if (gameOver)
              Text(
                "GameOver",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            if (gameOver)
              Center(
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  child: Text("New Game"),
                  onPressed: () {
                    initGame();
                    setState(() {});
                    nameController.text='';
                  },
                ),
              ),
            SizedBox(height: 30),
            TextFormField(
              controller: nameController,
              autofocus: false,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 15, 29, 15),
                hintText: "Enter name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var date = DateTime.now().toString();
                Map<String, dynamic> data = {
                  "name": nameController.text,
                  "score": score.toString(),
                };
                FirebaseFirestore.instance
                    .collection('game_score')
                    .doc(user!.email)
                    .collection('lvl2')
                    .doc(date)
                    .set(data);
                final snackBar =
                SnackBar(content: const Text('added to score')); // untuk skluar simple msg ,, kalau dah masukkan data dalam firebase, so die akan prompt user dengan msgh
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Scubmit Score"),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        backgroundColor: Colors.blueAccent,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.gamepad),
              label: 'Games',
              backgroundColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Games()));
              }),
        ],
      ),
    );
  }
}
