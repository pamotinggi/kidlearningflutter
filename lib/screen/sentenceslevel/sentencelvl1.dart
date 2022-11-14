import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/model/score_model.dart';

import '../../model/quiz.dart';
import '../../model/result.dart';
import '../sentencesreen.dart';

class Sentencelvl1 extends StatefulWidget {
  const Sentencelvl1({Key? key}) : super(key: key);

  @override
  State<Sentencelvl1> createState() => _Sentencelvl1State();
}

class _Sentencelvl1State extends State<Sentencelvl1> {
  final TextEditingController nameController = new TextEditingController();
  // call all require thing untuk firebase
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  // score punya objek refer dalam score punya data model
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
//data untuk soalan and jawapan simple kuiz
  static const _data = [
    {
      'questionText': 'I live in Amsterdam',
      'answers': [
        {'text': 'In', 'score': 0.0},
        {'text': 'Live', 'score': 0.0},
        {'text': 'Amsterdam', 'score': 20.0},
        {'text': 'I', 'score': 0.00},
      ]
    },
    {
      'questionText': 'I visited the Eiffel Tower in Paris.',
      'answers': [
        {'text': 'The', 'score': 0.0},
        {'text': 'Paris', 'score': 0.0},
        {'text': 'Eiffel Tower and Paris', 'score': 20.0},
        {'text': 'Eiffel Tower', 'score': 0.0},
      ]
    },
    {
      'questionText': 'Bhutan is a beautiful country.',
      'answers': [
        {'text': 'A', 'score': 0.0},
        {'text': 'Country', 'score': 0.0},
        {'text': 'Beautiful', 'score': 0.0},
        {'text': 'Bhutan', 'score': 20.0}
      ]
    },
    {
      'questionText': 'Summer is very hot.',
      'answers': [
        {'text': 'Summer', 'score': 20.0},
        {'text': 'Very', 'score': 0.0},
        {'text': 'Hot', 'score': 0.0},
        {'text': 'Is', 'score': 0.0}
      ]
    },
    {
      'questionText': 'The moon looks so beautiful',
      'answers': [
        {'text': 'Looks', 'score': 0.0},
        {'text': 'Moon', 'score': 20.0},
        {'text': 'The', 'score': 0.0},
        {'text': 'Beautiful', 'score': 0.0}
      ]
    }
  ];
  var _indexQuestion = 0;
  double _totalScore = 0.00;

  //simple ways untuk calculate jumlah score yang diperoleh
  void _answerQuestion(double score) {
    _totalScore += score;

    setState(() {
      _indexQuestion += 1;
    });
  }
//untuk restart the whole quiz lepas habis jawab semua soalan
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SentenceSreen()));
          },
        ),
        title: Text("Noun Level"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose the right noun from the sentence",
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
              // part code untuk masukkan data score dalam collection score dalam firebase,
              onPressed: () {
                var date = DateTime.now().toString();
                Map<String, dynamic> data = {
                  "name": nameController.text, // sebab tak ade data student, kita kena masukkan nama student tu secara manual kat textform field kat atas
                  "score": _totalScore.toString(),
                };
                FirebaseFirestore.instance
                    .collection('score')
                    .doc(user!.email)
                    .collection('lvl1') // sbb kita skrang kat level 1 , jadi data-data score kuiz yang dah done akan disimpan dalam satu level,
                    .doc(date)// untuk pastika data tak overwrite bile masuk data baru ,,
                    .set(data);
                final snackBar =
                SnackBar(content: const Text('added to score')); // untuk skluar simple msg ,, kalau dah masukkan data dalam firebase, so die akan prompt user dengan msgh
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
