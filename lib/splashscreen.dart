import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';
import 'package:semester_project/signin.dart';
import 'package:semester_project/splashscreen_class.dart';

class SplashScreen extends StatefulWidget {
const SplashScreen({Key? key}) : super(key: key);

@override
State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashservies splashscreen=splashservies();
  @override


  void initState(){ //init means initialize
    super.initState();
    splashscreen.issignin(context);


  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/splashscreen_logo.png',width: 200,height: 200,),
            SizedBox(
              height: 17,
            ),
            Text('MEMES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white,fontFamily: "avenir"),),
            SizedBox(
              height: 17,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.pink),
            )

          ],
        ),
      ),
    );
  }
}

