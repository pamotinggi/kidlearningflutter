import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kidlearningflutter/model/game_view.dart';
import 'package:kidlearningflutter/model/user_model.dart';
import 'package:kidlearningflutter/widget/game_card.dart';

import '../profile_extension/gamescoremain.dart';

class Gamescorelvl2 extends StatefulWidget {
  const Gamescorelvl2({Key? key}) : super(key: key);

  @override
  State<Gamescorelvl2> createState() => _Gamescorelvl2State();
}

class _Gamescorelvl2State extends State<Gamescorelvl2> {
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
      this._userModel = UserModel.fromMap(value.data());
    });
    getScoreList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Gamescoremain()));
            }),
        title: Text("Game Score Level 2"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _list.length,
          itemBuilder: (context, index) {
            final item = _list[index];
            return GameCard(_list[index] as game);
          },
        ),
      ),
    );
  }

  Future getScoreList() async {
    var data = await FirebaseFirestore.instance
        .collection('game_score')
        .doc(user!.email)
        .collection('lvl2')
        .get();
    setState(() {
      _list = List.from(data.docs.map((doc) => game.fromSnapshot(doc)));
    });
  }
}
