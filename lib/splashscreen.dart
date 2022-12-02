import 'dart:async';

import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';


class SplashScreen extends StatefulWidget {
const SplashScreen({Key? key}) : super(key: key);

@override
State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){ //init means initialize
    super.initState();
    Timer(
        Duration(seconds: 5), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => homescreen(),
          ));
    }
    );

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

