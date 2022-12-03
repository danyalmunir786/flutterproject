import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';

class potery extends StatefulWidget {
  const potery({Key? key}) : super(key: key);

  @override
  State<potery> createState() => _poteryState();
}

class _poteryState extends State<potery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // shape: RoundedRectangleBorder(
      //   //     borderRadius: BorderRadius.only(
      //   //       bottomLeft: Radius.circular(25),
      //   //       bottomRight: Radius.circular(25),
      //   //     )
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

          print('pressed');
        },
      ),
      body: Center(
        child: Text('potery',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      //title: Text('photo',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

    );
  }
}
