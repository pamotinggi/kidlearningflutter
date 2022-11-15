import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:kidlearningflutter/screen/letterpage/letterH.dart';
import 'package:kidlearningflutter/screen/letterpage/letterP.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_C.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_a.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_b.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_d.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_e.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_f.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_g.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_i.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_j.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_k.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_l.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_m.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_n.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_o.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_t.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_u.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_v.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_w.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_x.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_y.dart';
import 'package:kidlearningflutter/screen/letterpage/letter_z.dart';
import 'package:kidlearningflutter/screen/letterpage/letterq.dart';
import 'package:kidlearningflutter/screen/letterpage/letterr.dart';
import 'package:kidlearningflutter/screen/letterpage/letters.dart';
import 'package:kidlearningflutter/screen/profilescreen.dart';

class AlphabetScreen extends StatefulWidget {
  @override
  _AlphabetScreen createState() => _AlphabetScreen();
}

class _AlphabetScreen extends State<AlphabetScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3B3486),
          title: Text("Alplhabet"),
          automaticallyImplyLeading: false,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              }),
        ),
        body: Stack(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Color(0xff3B3486),
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/alpahabetnew.png"),
                            fit: BoxFit.fill)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterA()));
                        },
                        child: Text(
                          "A",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //A
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterB()));
                        },
                        child: Text(
                          "B",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //B
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterC()));
                        },
                        child: Text(
                          "C",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //C
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterD()));
                        },
                        child: Text(
                          "D",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //D
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterE()));
                        },
                        child: Text(
                          "E",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //E
                    ],
                  ), //A Sampai E
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterF()));
                        },
                        child: Text(
                          "F",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //F
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterG()));
                        },
                        child: Text(
                          "G",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //G
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterH()));
                        },
                        child: Text(
                          "H",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //H
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterI()));
                        },
                        child: Text(
                          "I",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //I
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterJ()));
                        },
                        child: Text(
                          "J",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                    ],
                  ), //F sampai J
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterK()));
                        },
                        child: Text(
                          "K",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ), //K
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterL()));
                        },
                        child: Text(
                          "L",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterM()));
                        },
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterN()));
                        },
                        child: Text(
                          "N",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterO()));
                        },
                        child: Text(
                          "O",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                    ],
                  ), //K Samapi O
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterP()));
                        },
                        child: Text(
                          "P",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterQ()));
                        },
                        child: Text(
                          "Q",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterR()));
                        },
                        child: Text(
                          "R",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterS()));
                        },
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterT()));
                        },
                        child: Text(
                          "T",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                    ],
                  ), //P sampai t
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterU()));
                        },
                        child: Text(
                          "U",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterV()));
                        },
                        child: Text(
                          "V",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterW()));
                        },
                        child: Text(
                          "W",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterX()));
                        },
                        child: Text(
                          "X",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterY()));
                        },
                        child: Text(
                          "Y",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LetterZ()));
                        },
                        child: Text(
                          "Z",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black54,
                            side: BorderSide(color: Colors.yellow, width: 7)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: SpeedDial(
          icon: Icons.menu,
          backgroundColor: Colors.blueAccent,
          children: [
            SpeedDialChild(
                child: const Icon(Icons.people),
                label: 'Profile',
                backgroundColor: Colors.blueAccent,
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
