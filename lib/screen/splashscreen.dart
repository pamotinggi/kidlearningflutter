import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidlearningflutter/screen/loginscreen.dart';



class SplashScreen extends StatefulWidget{
  @override
  _SplashScreen createState() => _SplashScreen();
  }

class _SplashScreen extends State<SplashScreen>{
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
        ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
        image: DecorationImage(image: AssetImage("asset/test_splash.png"),fit:  BoxFit.fill)
      ),
    );
  }
}
