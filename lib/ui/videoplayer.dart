import 'package:flutter/material.dart';
import 'package:netflix/modal/videosongsinfo.dart';
import 'package:video_player/video_player.dart';
class Vedioplayer extends StatefulWidget {
  VideoSong videoSong;

  Vedioplayer(this.videoSong);

  @override
  _VedioplayerState createState() => _VedioplayerState();
}

class _VedioplayerState extends State<Vedioplayer> {
  VideoPlayerController playerController;


  @override
  void initState() {
    super.initState();
    playerController = VideoPlayerController.asset(widget.videoSong.Music)
      ..initialize().then((_) {
        setState(() {

        });

      });
    playerController.play();
    playerController.setLooping(false);
    playerController.setVolume(10.0);

  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child:  Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    child: (playerController != null
                        ? VideoPlayer(playerController)
                        : Container()),
                  )),
            ),
          ),
          Center(
            child: RaisedButton(onPressed:(){
              if(playerController.value.isPlaying){
                setState(() {
                  playerController.pause();
                });

              }else{
                setState(() {
                  playerController.play();
                });

              };

            },
              child: playerController.value.isPlaying?Icon(Icons.pause):Icon(Icons.play_arrow)

            ),
          )
        ],
      ),
    );
  }
}

