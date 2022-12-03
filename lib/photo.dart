import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';

class photo extends StatefulWidget {
  const photo({Key? key}) : super(key: key);

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // shape: RoundedRectangleBorder(
      //   //     borderRadius: BorderRadius.only(
      //   //       bottomLeft: Radius.circular(25),
      //   //       bottomRight: Radius.circular(25),
      //   //     )
      //   ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

          print('pressed');
        },
      ),
        body: Center(
          child: Text('photo',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ),
        //title: Text('photo',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

    );
  }
}
