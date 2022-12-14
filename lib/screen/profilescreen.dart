import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/about.dart';
import 'package:kidlearningflutter/screen/alphabetscreen.dart';
import 'package:kidlearningflutter/screen/games.dart';
import 'package:kidlearningflutter/screen/loginscreen.dart';
import 'package:kidlearningflutter/screen/profile_extension/levelscreen.dart';
import 'package:kidlearningflutter/screen/profile_extension/score_main.dart';
import 'package:kidlearningflutter/screen/sentencesreen.dart';

import '../model/profile_model.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserProfile currentUser = UserProfile();

  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.currentUser = UserProfile.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3B3486),
        elevation: 0.5,
      ),
      drawer: const NavigationDrawer(),
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xff3B3486),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/welsome.png"),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    width: 200,
                    height: 95,
                    color: Color(0xff7743DB),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("You log in as : ",
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                '${currentUser.firstName}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Levelscreen()));
                              },
                              child: Text(
                                "Level",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFE9B1),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => ScoreMain()));
                              },
                              child: Text(
                                "Score",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFE9B1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => AlphabetScreen()));
                          },
                          child: Text(
                            "Alphabet",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFE9B1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SentenceSreen()));
                          },
                          child: Text(
                            "Sentences",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black54),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFE9B1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => Games()));
                            },
                            child: Text(
                              "Games",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffFFE9B1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Stack(
          children: <Widget>[
            Expanded(child: Container(
              color: Color(0xffFCFDF2),
            ),),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildHeader(context),
                  buildMenuItems(context),
                ],
              ),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildHeader(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(height: 30),
          ListTile(
            leading: const Icon(EvaIcons.info),
            title: const Text('About'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              _signOut();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      );

  Future<void> _signOut() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth.signOut();
  }
}
