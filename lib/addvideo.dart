import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:semester_project/video.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path/path.dart' as Path;
import 'package:path/path.dart';


class addvideo extends StatefulWidget {
  @override
  _addvideoState createState() => _addvideoState();
}

class _addvideoState extends State<addvideo> {
  bool uploading = false;
  double val = 0;
    CollectionReference ?vidRef;
    firebase_storage.Reference ?ref;

 // late File _image;
  //late File _cameraImage;
      File ?_video;
    File ?_cameraVideo;

  ImagePicker picker = ImagePicker();

   VideoPlayerController? _videoPlayerController;
   VideoPlayerController? _cameraVideoPlayerController;

  // This funcion will helps you to pick and Image from Gallery
  // _pickImageFromGallery() async {
  //   PickedFile? pickedFile =
  //   await picker.getImage(source: ImageSource.gallery, imageQuality: 50);
  //
  //   File image = File(pickedFile!.path);
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }

  // This funcion will helps you to pick and Image from Camera
  // _pickImageFromCamera() async {
  //   PickedFile? pickedFile =
  //   await picker.getImage(source: ImageSource.camera, imageQuality: 50);
  //
  //   File image = File(pickedFile!.path);
  //
  //   setState(() {
  //     _cameraImage = image;
  //   });
  // }

  // This funcion will helps you to pick a Video File
  _pickVideo() async {
    PickedFile? pickedFile = await picker.getVideo(source: ImageSource.gallery);

    _video = File(pickedFile!.path);

    _videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController?.play();
      //  if (pickedFile?.path== null) retrieveLostData();
      });
  }

  // This funcion will helps you to pick a Video File from Camera
  _pickVideoFromCamera() async {
    PickedFile? pickedFile = await picker.getVideo(source: ImageSource.camera);

    _cameraVideo = File(pickedFile!.path);

    _cameraVideoPlayerController = VideoPlayerController.file(_cameraVideo!)
      ..initialize().then((_) {
        setState(() {});
        _cameraVideoPlayerController?.play();
       // if (pickedFile?.path== null) retrieveLostData();
      });
  }
  Future<void> retrieveLostData() async {
    final LostData response = await picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _video;
        //_video.add(File(response.file!.path));
        //_image.add(File(response.file.path));
      });
    } else {
      print(response.file);
    }
  }
  Future uploadFile() async {
    int i = 1;

    for (var vid in  _pickVideo())
    {
      setState(() {
        val = i /_pickVideo().lengh;
      });
      ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('video/${Path.basename(vid.path)}');
      await ref?.putFile(vid).whenComplete(() async {
        await ref?.getDownloadURL().then((value) {
          vidRef?.add({'url': value});
          i++;
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    vidRef = FirebaseFirestore.instance.collection('videoURLs');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add Video"),
        actions: [
          FloatingActionButton(
              onPressed:(){
                setState(() {
                  uploading = true;
                });
                uploadFile().whenComplete(() => Navigator.of(context).pop());
              },
              child: Text(
                'upload',
                style: TextStyle(color: Colors.white),
              ))
          // FlatButton(
          //     onPressed: () {
          //       setState(() {
          //         uploading = true;
          //       });
          //       uploadFile().whenComplete(() => Navigator.of(context).pop());
          //     },
          //     child: Text(
          //       'upload',
          //       style: TextStyle(color: Colors.white),
          //     ))
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                // if (_image != null)
                //   Image.file(_image)
                // else
                //   Text(
                //     "Click on Pick Image to select an Image",
                //     style: TextStyle(fontSize: 18.0),
                //   ),
                // MaterialButton(
                //   onPressed: () {
                //     _pickImageFromGallery();
                //   },
                //   child: Text("Pick Image From Gallery"),
                // ),
                SizedBox(
                  height: 16.0,
                ),
                // if (_cameraImage != null)
                //   Image.file(_cameraImage)
                // else
                //   Text(
                //     "Click on Pick Image to select an Image",
                //     style: TextStyle(fontSize: 18.0),
                //   ),
                // MaterialButton(
                //   onPressed: () {
                //     _pickImageFromCamera();
                //   },
                //   child: Text("Pick Image From Camera"),
                // ),
                if (_video != null)
                  _videoPlayerController!.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _videoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController!),
                  )
                      : Container()
                else
                  Text(
                    "Click on Pick Video to select video",
                    style: TextStyle(fontSize: 18.0),
                  ),
                MaterialButton(
                  onPressed: () {
                    _pickVideo();
                  },
                  child: Text("Pick Video From Gallery"),
                ),
                if (_cameraVideo != null)
                  _cameraVideoPlayerController!.value.isInitialized
                      ? AspectRatio(
                    aspectRatio:
                    _cameraVideoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(_cameraVideoPlayerController!),
                  )
                      : Container()
                else
                  Text(
                    "Click on Pick Video to select video",
                    style: TextStyle(fontSize: 18.0),
                  ),
                MaterialButton(
                  onPressed: () {
                    _pickVideoFromCamera();
                  },
                  child: Text("Pick Video From Camera"),
                ),
                 uploading
                    ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Text(
                            'uploading...',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircularProgressIndicator(
                          value: val,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        )
                      ],
                    ))
                    : Container(),
              ],
            ),
          ),

        ),
      ),
    );
  }
}