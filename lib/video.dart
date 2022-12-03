import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';

class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
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
        child: Text('video',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      //title: Text('photo',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

    );
  }
}
