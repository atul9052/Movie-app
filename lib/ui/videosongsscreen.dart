import 'package:flutter/material.dart';
import 'package:netflix/modal/videosongsinfo.dart';
import 'package:netflix/ui/videoplayer.dart';
class VideoPage extends StatefulWidget {
  int points;
  VideoPage({this.points});
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final List<VideoSong> videosonglist = VideoSong.getvideosongs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video songs"),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body:  ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,

                  itemCount: videosonglist.length,
                  itemBuilder: (BuildContext, int index) {
                    return ListTile(
                      leading: Container(
                        child: Image.asset(videosonglist[index].image),
                      ),
                      onTap:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Vedioplayer(videosonglist[index]),
                          ),
                        );

                      },

                      title: Text(videosonglist[index].songname,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                      subtitle: Text(videosonglist[index].Singer),

                    );
                  }),
            ),
          ]
      ),
    );
  }
}
