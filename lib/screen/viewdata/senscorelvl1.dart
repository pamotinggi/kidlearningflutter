import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kidlearningflutter/model/sentence_view.dart';
import 'package:kidlearningflutter/model/user_model.dart';
import 'package:kidlearningflutter/screen/profile_extension/sentencescoremain.dart';
import 'package:kidlearningflutter/widget/sentence_card.dart';

class Senscorelvl1 extends StatefulWidget {
  const Senscorelvl1({Key? key}) : super(key: key);

  @override
  State<Senscorelvl1> createState() => _Senscorelvl1State();
}

class _Senscorelvl1State extends State<Senscorelvl1> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;
  UserModel _userModel = UserModel();
  final _formkey = GlobalKey<FormState>();
  List<Object> _itemlist = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this._userModel = UserModel.fromMap(value.data());
      setState(() {});
    });
    getScoreList();
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
                MaterialPageRoute(builder: (context) => SentenceScoreMain()));
          },
        ),
        title: Text("Sentence Score Level 1"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _itemlist.length,
            itemBuilder: (context, index) {
              final item = _itemlist[index];
              return SentenceCard(_itemlist[index] as senview);
            }),
      ),
    );
  }

  Future getScoreList() async {
    var data = await FirebaseFirestore.instance
        .collection('score')
        .doc(user!.email)
        .collection('lvl1')
        .get();
    setState(() {
      _itemlist = List.from(data.docs.map((doc) => senview.fromSnapshot(doc)));
    });
  }
}
