import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kidlearningflutter/model/gamescore_model.dart';
import 'package:kidlearningflutter/screen/games.dart';

import '../../model/itemmodel.dart';

class Game1 extends StatefulWidget {
  const Game1({Key? key}) : super(key: key);

  @override
  State<Game1> createState() => _Game1State();
}

class _Game1State extends State<Game1> {
  final TextEditingController nameController = new TextEditingController();

  //calling firebase
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;

  //game score model
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

  //list untuk objek-objek yang ada dalam game ni berserta dengan value-value yang tersendiri
  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(icon: FontAwesomeIcons.spider, name: "spider", value: "spider"),
      ItemModel(icon: FontAwesomeIcons.fish, name: "fish", value: "fish"),
      ItemModel(icon: FontAwesomeIcons.cat, name: "Cat", value: "Cat"),
      ItemModel(icon: FontAwesomeIcons.crow, name: "crow", value: "crow"),
      ItemModel(icon: FontAwesomeIcons.hippo, name: "hippo", value: "hippo"),
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(children: [
              TextSpan(text: "Score: "),
              TextSpan(
                  text: "$score",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ))
            ])),
            if (!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Draggable<ItemModel>(
                        data: item,
                        childWhenDragging: Icon(
                          item.icon,
                          color: Colors.grey,
                          size: 50.0,
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
                          // untuk checking item yang di drag tuh sama value tak dengan drag target
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
                child: ElevatedButton(
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
            ElevatedButton( // untuk masukkan score dalam firebase
              onPressed: () {
                var date = DateTime.now().toString();
                Map<String, dynamic> data = {
                  "name": nameController.text,
                  "score": score.toString(),
                };
                FirebaseFirestore.instance
                    .collection('game_score')
                    .doc(user!.email)
                    .collection('lvl1')
                    .doc(date)
                    .set(data);
                final snackBar =
                SnackBar(content: const Text('added to score')); // untuk skluar simple msg ,, kalau dah masukkan data dalam firebase, so die akan prompt user dengan msgh
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Submit Score"),
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
