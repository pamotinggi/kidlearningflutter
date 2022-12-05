import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kidlearningflutter/model/sentence_view.dart';
import 'package:kidlearningflutter/model/user_model.dart';
import 'package:kidlearningflutter/widget/sentence_card.dart';

import '../profile_extension/sentencescoremain.dart';

class Senscorelvl3 extends StatefulWidget {
  const Senscorelvl3({Key? key}) : super(key: key);

  @override
  State<Senscorelvl3> createState() => _Senscorelvl3State();
}

class _Senscorelvl3State extends State<Senscorelvl3> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  UserModel _userModel = UserModel();
  final _formkey = GlobalKey<FormState>();
  List<Object> _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value) {
      this._userModel = UserModel.fromMap((value.data()));
    });
    getScoreList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SentenceScoreMain()));
          },
        ),
        title: Text("Sentence Score Level 3"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            final item = _list[index];
            return SentenceCard(_list[index] as senview);
          },
        ),
      ),
    );
  }

  Future getScoreList() async {
    var data = await FirebaseFirestore.instance
        .collection('score')
        .doc(user!.email)
        .collection('lvl3')
        .get();
    setState(() {
      _list = List.from(data.docs.map((doc) => senview.fromSnapshot(doc)));
    });
  }
}
