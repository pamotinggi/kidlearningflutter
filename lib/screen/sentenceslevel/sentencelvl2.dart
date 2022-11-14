import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/model/score_model.dart';

import '../../model/quiz.dart';
import '../../model/result.dart';
import '../sentencesreen.dart';

class Sentencelvl2 extends StatefulWidget {
  const Sentencelvl2({Key? key}) : super(key: key);

  @override
  State<Sentencelvl2> createState() => _Sentencelvl2State();
}

class _Sentencelvl2State extends State<Sentencelvl2> {
  final TextEditingController nameController = new TextEditingController();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  score scoremodel = new score();

  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.scoremodel = score.fromMap(value.data());
      setState(() {});
    });
  }

  static const _data = [
    {
      'questionText': 'They were having dinner.',
      'answers': [
        {'text': 'Dinner', 'score': 0.0},
        {'text': 'They', 'score': 20.0},
        {'text': 'Were', 'score': 0.0},
        {'text': 'Having', 'score': 0.00},
      ]
    },
    {
      'questionText': 'I want to sleep.',
      'answers': [
        {'text': 'To', 'score': 0.0},
        {'text': 'Sleep', 'score': 0.0},
        {'text': 'I', 'score': 20.0},
        {'text': 'Want', 'score': 0.0},
      ]
    },
    {
      'questionText': 'Is that my laptop?',
      'answers': [
        {'text': 'My', 'score': 20.0},
        {'text': 'Laptop', 'score': 0.0},
        {'text': 'Is', 'score': 0.0},
        {'text': 'That', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Everyone is sleeping in the dorm room.',
      'answers': [
        {'text': 'Sleeping', 'score': 0.0},
        {'text': 'Dorm', 'score': 0.0},
        {'text': 'Room', 'score': 0.0},
        {'text': 'Everyone', 'score': 20.0}
      ]
    },
    {
      'questionText': 'We were playing scrabble.',
      'answers': [
        {'text': 'Playing', 'score': 0.0},
        {'text': 'Scrabble', 'score': 0.0},
        {'text': 'We', 'score': 20.0},
        {'text': 'Were', 'score': 0.0}
      ]
    }
  ];
  var _indexQuestion = 0;
  double _totalScore = 0.00;

  void _answerQuestion(double score) {
    _totalScore += score;

    setState(() {
      _indexQuestion += 1;
    });
  }

  void _restart() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
      nameController.text="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SentenceSreen()));
            }),
        title: Text("Pronoun level"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose the correct pronoun from the sentence",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: (_indexQuestion <= 4 && _indexQuestion >= 0)
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      indexQuestion: _indexQuestion,
                      data: _data)
                  : Result(_totalScore, _restart),
            ),
            SizedBox(height: 35),
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
                  "score": _totalScore.toString(),
                };
                FirebaseFirestore.instance
                    .collection('score')
                    .doc(user!.email)
                    .collection('lvl2')
                    .doc(date)
                    .set(data);
                final snackBar =
                SnackBar(content: const Text('added to score'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                _restart();
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
              child: const Icon(EvaIcons.edit2),
              label: 'Sentence Page',
              backgroundColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SentenceSreen()));
              }),
        ],
      ),
    );
  }
}
