import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/drawer.dart';
import 'package:semester_project/url.dart';
import 'package:semester_project/homescreen.dart';
import 'package:semester_project/splashscreen.dart';
import 'package:semester_project/url.dart';
import 'package:semester_project/signup.dart';
import 'package:semester_project/signin.dart';
import 'package:semester_project/video.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: 'login',
     // routes: {
     //   //   'login': (contaxt)=>mylogin(),
     //   //   'register': (contaxt)=>myregister(),
     //   'drawer':  (contaxt)=>drawer_(),
     //   'homescreen': (contaxt)=>homescreen(),
     //   'buttonnavigatiom': (contaxt)=>buttonnavigation(),
     //   //'url' : (context)=>myUrl(),
     //
     // },

      debugShowCheckedModeBanner: false,
      title: 'Memes',
      theme: ThemeData(

          //primarySwatch: Colors.blue,
          ),

    //home: const drawer_(),
     home: const homescreen(),
     //home: const drawer_(),
      //home: const SplashScreen(),
      //home: const mylogin(),
      //home: const myregister(),
      //home: const signup(),
      //home: const signin(),
      //home: const video(),



      // home: const (title: 'project'),
    );
  }
}

abstract class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
   firstroute();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //  int _selected =0;
  //  void changeselected(int indux){
  //    setState(() {
  //      _selected=indux;
  //    });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     );
   }
}
