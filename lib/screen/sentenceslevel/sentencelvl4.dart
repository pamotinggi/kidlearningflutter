import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/model/score_model.dart';

import '../../model/quiz.dart';
import '../../model/result.dart';
import '../sentencesreen.dart';



class Sentencelvl4 extends StatefulWidget {
  const Sentencelvl4({Key? key}) : super(key: key);

  @override
  State<Sentencelvl4> createState() => _Sentencelvl4State();
}

class _Sentencelvl4State extends State<Sentencelvl4> {
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
      'questionText': 'Marcus always arrives early',
      'answers': [
        {'text': 'Arrives', 'score': 0.0},
        {'text': 'Always', 'score': 20.0},
        {'text': 'Early', 'score': 0.0},
        {'text': 'Marcus', 'score': 0.00},
      ]
    },
    {
      'questionText': 'Their pets go everywhere together.',
      'answers': [
        {'text': 'Their', 'score': 0.0},
        {'text': 'Go', 'score': 0.0},
        {'text': 'Together', 'score': 0.0},
        {'text': 'Everywhere', 'score': 20.0},
      ]
    },
    {
      'questionText': 'The little kid ran excitedly.',
      'answers': [
        {'text': 'The', 'score': 0.0},
        {'text': 'Little', 'score': 0.0},
        {'text': 'Ran', 'score': 0.0},
        {'text': 'Excitedly', 'score': 20.0}
      ]
    },
    {
      'questionText': 'They ran quickly to catch the bus.',
      'answers': [
        {'text': 'Catch', 'score': 0.0},
        {'text': 'Ran', 'score': 0.0},
        {'text': 'Quickly', 'score': 20.0},
        {'text': 'Bus', 'score': 0.0}
      ]
    },
    {
      'questionText': 'The students had worked very hard.',
      'answers': [
        {'text': 'Students', 'score': 0.0},
        {'text': 'Worked', 'score': 0.0},
        {'text': 'Very', 'score': 0.0},
        {'text': 'Hard', 'score': 20.0}
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
        title: Text("Adverb Level"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose the correct verb from the sentence",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
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
                    .collection('lvl4')
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
