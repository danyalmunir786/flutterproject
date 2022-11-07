import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:semester_project/drawer.dart';

class buttonnavigation extends StatelessWidget {
  const buttonnavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.search),
      onPressed: (){},

    ),
    ],

    ),
    );
  }
}
