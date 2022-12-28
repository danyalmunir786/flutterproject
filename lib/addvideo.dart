
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:semester_project/video.dart';
import 'package:video_player/video_player.dart';

class addvideo extends StatefulWidget {
  const addvideo({Key? key}) : super(key: key);

  @override
  State<addvideo> createState() => _addvideoState();
}

class _addvideoState extends State<addvideo> {
     VideoPlayerController? _videoPlayerController;
     File ?_video ;
  final picker=ImagePicker();
  _pickvideo() async{
    final video= await picker.getVideo(source: ImageSource.gallery);

    _video= File(video!.path) ;
    _videoPlayerController =VideoPlayerController.file(_video!)..initialize().then((value){

      setState(() {

      });
      _videoPlayerController?.play();

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add video'),
      ),

      body: Center(
        child: Column(
          children: [

            if(_video!=null)
              _videoPlayerController!.value.isInitialized ? AspectRatio(
                  aspectRatio: _videoPlayerController!.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController!),
              )

                  :Container()
            else
              Text('click on pick video on selected video',style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 30,
            ),

            MaterialButton(
                onPressed: (){
                  _pickvideo();
                },

              child: Text(
                'pick video from gallery',
                //loading=loading,
                style: TextStyle(fontSize: 25,color: Colors.black),
              ),
              //child: Text('pick video on gallery',style: TextStyle(fontSize: 10,color: Colors.black),),

    //style: TextStyle(fontSize: 25,color: Colors.white

            )

          ],
        ),
      ),
    );
  }
}
