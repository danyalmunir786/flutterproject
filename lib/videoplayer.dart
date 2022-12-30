import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:semester_project/video.dart';
import 'package:semester_project/videoplayerscreen.dart';

class videoplayer1 extends StatefulWidget {
  final String url;

  const videoplayer1({Key? key, required this.url}) : super(key: key);

  @override
  State<videoplayer1> createState() => _videoplayer1State();
}

class _videoplayer1State extends State<videoplayer1> {

  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController =new VideoPlayerController.network(widget.url);
    videoPlayerController.initialize().then((value){

      setState(() {
        videoPlayerController.play();
        videoPlayerController.setLooping(true);

      });
    });


  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      IconButton(icon: Icon(Icons.play_circle_fill_outlined),onPressed: (){

        if(videoPlayerController.value.isPlaying){

          videoPlayerController.pause();
        }
        else{
          videoPlayerController.play();
        }

      }),

     Center(
    child: Container(
      width: 500,
      height: 500,
      child: VideoPlayer(videoPlayerController),

    ),
    )

      ],
    );
  }
}
