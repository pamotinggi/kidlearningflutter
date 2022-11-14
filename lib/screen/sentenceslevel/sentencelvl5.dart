import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../model/quiz.dart';
import '../../model/result.dart';
import '../../model/score_model.dart';
import '../sentencesreen.dart';


class Sentencelvl5 extends StatefulWidget {
  const Sentencelvl5({Key? key}) : super(key: key);

  @override
  State<Sentencelvl5> createState() => _Sentencelvl5State();
}

class _Sentencelvl5State extends State<Sentencelvl5> {
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
      'questionText': 'Ria lives in a beautiful house.',
      'answers': [
        {'text': 'Ria', 'score': 0.0},
        {'text': 'House', 'score': 0.0},
        {'text': 'Beautiful', 'score': 20.0},
        {'text': 'Lives', 'score': 0.0},
      ]
    },
    {
      'questionText': 'This store has a nice collection of shoes.',
      'answers': [
        {'text': 'Store', 'score': 0.0},
        {'text': 'Collection', 'score': 0.0},
        {'text': 'Nice', 'score': 20.0},
        {'text': 'Shoes', 'score': 0.0},
      ]
    },
    {
      'questionText': 'A colorful butterfly was sitting in the garden.',
      'answers': [
        {'text': 'Garden', 'score': 0.0},
        {'text': 'Colorful', 'score': 20.0},
        {'text': 'Sitting', 'score': 0.0},
        {'text': 'Butterfly', 'score': 0.0}
      ]
    },
    {
      'questionText': 'This hot and humid weather is exhausting.',
      'answers': [
        {'text': 'Hot', 'score': 0.0},
        {'text': 'Humid', 'score': 0.0},
        {'text': 'Hot and humid', 'score': 20.0},
        {'text': 'Remaining', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Meera lost her brown bag.',
      'answers': [
        {'text': 'Meera', 'score': 0.0},
        {'text': 'brown', 'score': 20.0},
        {'text': 'Bag', 'score': 0.0},
        {'text': 'Lost', 'score': 0.0}
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
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SentenceSreen()));
            }
        ),
        title: Text("Adjectives level"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose the right adjectives from the sentences",
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
              onPressed: () async {
                var date = DateTime.now().toString();
                Map<String, dynamic> data = {
                  "name": nameController.text,
                  "score": _totalScore.toString(),
                } as Map<String, dynamic>;
                FirebaseFirestore.instance
                    .collection('score')
                    .doc(user!.email)
                    .collection('lvl5')
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
