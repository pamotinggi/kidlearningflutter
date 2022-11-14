import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/model/score_model.dart';

import '../../model/quiz.dart';
import '../../model/result.dart';
import '../sentencesreen.dart';

class Sentencelvl3 extends StatefulWidget {
  const Sentencelvl3({Key? key}) : super(key: key);

  @override
  State<Sentencelvl3> createState() => _Sentencelvl3State();
}

class _Sentencelvl3State extends State<Sentencelvl3> {
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
      'questionText': 'The monkey sat by the door.',
      'answers': [
        {'text': 'Monkey', 'score': 0.0},
        {'text': 'By', 'score': 0.0},
        {'text': 'Door', 'score': 0.0},
        {'text': 'Sat', 'score': 20.00},
      ]
    },
    {
      'questionText': 'Jack left in a hurry.',
      'answers': [
        {'text': 'A', 'score': 0.0},
        {'text': 'Hurry', 'score': 0.0},
        {'text': 'Jack', 'score': 0.0},
        {'text': 'Left', 'score': 20.0},
      ]
    },
    {
      'questionText': 'Michelle hurt her elbow while playing.',
      'answers': [
        {'text': 'Her', 'score': 0.0},
        {'text': 'Elbow', 'score': 0.0},
        {'text': 'Michelle', 'score': 0.0},
        {'text': 'Hurt, playing', 'score': 20.0}
      ]
    },
    {
      'questionText': 'Please open the door.',
      'answers': [
        {'text': 'Open', 'score': 20.0},
        {'text': 'The', 'score': 0.0},
        {'text': 'Please', 'score': 0.0},
        {'text': 'Door', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Joe accepted the job offer.',
      'answers': [
        {'text': 'The', 'score': 0.0},
        {'text': 'Job', 'score': 0.0},
        {'text': 'Accepted', 'score': 20.0},
        {'text': 'Joe', 'score': 0.0}
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
        title: Text("Verb Level"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose the right verb from the sentence",
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
                    .collection('lvl3')
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
