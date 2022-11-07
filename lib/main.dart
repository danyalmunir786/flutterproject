import 'package:flutter/material.dart';
import 'package:semester_project/drawer.dart';
import 'package:semester_project/login.dart';
import 'package:semester_project/register.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login',
      routes: {
        'login': (contaxt)=>mylogin(),
        'register': (contaxt)=>myregister(),
        'drawer': (contaxt)=>drawer_(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

          //primarySwatch: Colors.blue,
          ),

     // home: const drawer_(),



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
