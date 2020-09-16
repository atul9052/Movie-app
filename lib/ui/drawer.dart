import 'package:flutter/material.dart';
import 'package:netflix/ui/fingerprint.dart';
import 'package:netflix/ui/profile.dart';
import 'package:netflix/ui/songs.dart';
import 'package:netflix/ui/videosongsscreen.dart';
import 'package:video_player/video_player.dart';
import 'categoryscreen.dart';
import 'downloadscreen.dart';
import 'language.dart';
import 'mylistscreen.dart';
class drawer extends StatefulWidget {
  String image;
  String phoneno ;
  String country;
  String countryname;
  VideoPlayerController playerController;
  drawer({this.image, this.phoneno, this.country, this.countryname,
      this.playerController});

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {

 TextStyle  drawerstyle = TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: <Widget>[
        Container(

          child: Container(

            height: 200,
            width: double.infinity,

            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.indigoAccent.withOpacity(0.9),Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:29.0),
                  child: Center(
                    child: Container(

                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(


                          image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.fitWidth)
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text("Atul",style: drawerstyle)
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person,color: Colors.black,),
          title: Text("Profile",style: drawerstyle,),
          onTap:  () {
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Profile(phoneno: widget.phoneno,country: widget.country,countryname: widget.countryname,),
              ),
            );
          }
        ),
        ListTile(
          leading: Icon(Icons.audiotrack,color: Colors.black,),
          title: Text("Songs",style: drawerstyle,),
          onTap:  () {
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Songs(),
              ),
            );
          }
        ),
        ListTile(
          leading: Icon(Icons.music_video,color: Colors.black,),
          title: Text("VideoSongs",style: drawerstyle,),
          onTap:  () {
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => VideoPage(),
              ),
            );
          }
        ),
        ListTile(
          onTap: (){
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Mylistscreen(),
              ),
            );
          },
          leading: Icon(Icons.list,color: Colors.black),
          title: Text("My List",style: drawerstyle,),

        ),ListTile(
          leading: Icon(Icons.file_download,color: Colors.black),
          title: Text("My downloads",style: drawerstyle,),
          onTap: (){
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Downloadscreen(),
              ),
            );

          },
        ),
        ListTile(
          leading: Icon(Icons.language,color: Colors.black),
          title: Text("Languages",style: drawerstyle,),
          onTap: (){
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Language(),
              ),
            );

          },

        ),
        ListTile(
          leading: Icon(Icons.category,color: Colors.black),
          title: Text("Categories",style: drawerstyle,),
          onTap: (){
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Categoryscreen(),
              ),
            );

          },

        ),
       InkWell(
          onTap: (){
            setState(() {
              widget.playerController.pause();
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MyHomePage(),
              ),
            );
          },
          child: ListTile(
            leading: Icon(Icons.send,color: Colors.black),
            title: Text("sign out",style: drawerstyle,),

          ),
        ),
      ],
    );
  }
}
