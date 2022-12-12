import 'dart:async';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';
import 'package:semester_project/splashscreen.dart';
import 'package:semester_project/signin.dart';


class splashservies{
  void issignin(BuildContext context){

final auth=FirebaseAuth.instance;
final user =auth.currentUser;
if(user!=null)
  {
    Timer(
        Duration(seconds: 5), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => homescreen(),
          ));
    }
    );
  }
else
  {
    Timer(
        Duration(seconds: 5), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => signin(),
          ));
    }
    );
  }


  }
}