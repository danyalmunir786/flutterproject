import 'dart:html';
//import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/videoplayer.dart';
import 'package:uuid/uuid.dart';
import 'package:semester_project/videoplayer.dart';


class videoplayerscreen extends StatefulWidget {
  const videoplayerscreen({Key? key}) : super(key: key);

  @override
  State<videoplayerscreen> createState() => _videoplayerscreenState();
}

class _videoplayerscreenState extends State<videoplayerscreen> {
  late FileUploadInputElement fileUploadInputElement;
  Uuid uid= Uuid();

  UploadVideo(){
    FileUploadInputElement input= FileUploadInputElement()..accept='videos/*';
    input.click();
    input.onChange.listen((event) {
      final file= input.files!.first;
      final reader =FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((event) {
        Reference reference= FirebaseStorage.instance.ref().child('videos/').child(uid.v4().toString());

        UploadTask task= reference.putBlob(file);
        task.whenComplete((){
          reference.getDownloadURL().then((url){
            FirebaseFirestore.instance.collection('videos').doc().set({
              "url":url


            });

          });

        });
         //firebase actual file
      });

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: ()=>UploadVideo(),
      ),
      appBar: AppBar(
        title: Text('video player'),
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('videos').snapshots(),

        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(

                itemCount: snapshot.data!.docs.length,
                itemBuilder:(context, index){

                  DocumentSnapshot data= snapshot.data!.docs[index];
                  return videoplayer1(url: data[index]);
                });

          }
          else{
            return CircularProgressIndicator();

          }

        }),
      );

  }
}
