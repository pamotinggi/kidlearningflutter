import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kidlearningflutter/model/quiz.dart';
import 'package:kidlearningflutter/model/result.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/model/score_model.dart';
import 'package:kidlearningflutter/model/user_model.dart';
import 'package:kidlearningflutter/screen/sentencesreen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:kidlearningflutter/model/user_model.dart';

class SentenceTestLevel extends StatefulWidget {
  const SentenceTestLevel({Key? key}) : super(key: key);

  @override
  State<SentenceTestLevel> createState() => _SentenceTestLevelState();
}

class _SentenceTestLevelState extends State<SentenceTestLevel> {
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
      'questionText':
          'Flutter is an _____ mobile aplication development framework developed by Google.',
      'answers': [
        {'text': 'Open-source', 'score': 9.73},
        {'text': 'Shareware', 'score': 4.61},
        {'text': 'Both', 'score': 1.95},
        {'text': 'None of the above', 'score': 0.00},
      ]
    },
    {
      'questionText':
          'Flutter apps are written in the _____ language and make use of many advanced features of this language.',
      'answers': [
        {'text': 'Java', 'score': 2.3},
        {'text': 'HTML', 'score': 0.32},
        {'text': 'JavaScript', 'score': 3.00},
        {'text': 'Dart', 'score': 9.98},
      ]
    },
    {
      'questionText': 'Which of the following widgets is used for layouts?',
      'answers': [
        {'text': 'Text', 'score': 0.64},
        {'text': 'Column', 'score': 10.00},
        {'text': 'Inkwell', 'score': 3.28},
        {'text': 'Expanded', 'score': 1.02}
      ]
    },
    {
      'questionText': 'When was Flutter first described?',
      'answers': [
        {'text': '2012', 'score': 0.12},
        {'text': '2013', 'score': 2.13},
        {'text': '2017', 'score': 6.42},
        {'text': '2015', 'score': 9.99}
      ]
    },
    {
      'questionText': 'When was Flutter released?',
      'answers': [
        {'text': '2016', 'score': 5.53},
        {'text': '2017', 'score': 10.00},
        {'text': '2013', 'score': 2.47},
        {'text': '2019', 'score': 2.35}
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Test Level",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Choose the right noun in the question",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                  "score": _totalScore
                } as Map<String, dynamic>;
                FirebaseFirestore.instance
                    .collection('score')
                    .doc(user!.uid)
                    .collection('lvl1')
                    .doc(date)
                    .set(data);
                final snackBar =
                    SnackBar(content: const Text('added to score'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                _restart();
                nameController.text = "";
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
