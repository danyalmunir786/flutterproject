import 'package:flutter/material.dart';
import 'package:semester_project/addvideo.dart';
import 'package:semester_project/homescreen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:video_player/video_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => addvideo())
          );
          //print('pressed');
        },
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('videoURLs').snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Container(
            padding: EdgeInsets.all(4),
            height: 950,
            width: 950,
            child: GridView.builder(
                itemCount: snapshot.data?.docs.length,
                //  itemCount: snapshot.data.documents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,),
                itemBuilder: (context, index) {
                  return Container(

                    margin: EdgeInsets.all(10),
                    child: FadeInImage.memoryNetwork(
                        fit: BoxFit.cover,
                        placeholder: kTransparentImage,
                        image: snapshot.data?.docs[index].get('url')),
                  );
                }),
          );
        },
      ),

      // body: Center(
      //   child: Text('video',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      // ),
      //title: Text('photo',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

    );
  }
}
