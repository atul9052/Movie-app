import 'package:flutter/material.dart';
import 'package:netflix/modal/songsinfo.dart';

import 'audioplayer.dart';
class Songs extends StatefulWidget {
  @override
  _SongsState createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  final List<Song> songlist = Song.getsongs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Songs"),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                scrollDirection: Axis.vertical,

                itemCount: songlist.length,
                itemBuilder: (BuildContext, int index) {
                  return ListTile(
                    leading: Icon(Icons.music_note,size: 30,),
                    onTap:() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LocalAudio(song: songlist[index],),
                      ),
                    ),

                    title: Text(songlist[index].songname,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text(songlist[index].Singer),

                  );
                }),
          ),
        ]
      ),
    );
  }
}
