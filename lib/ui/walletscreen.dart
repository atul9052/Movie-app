import 'package:flutter/material.dart';
import 'package:netflix/modal/info.dart';
import 'package:netflix/ui/videosongsscreen.dart';
import 'package:share/share.dart';
import 'package:netflix/ui/profile.dart';
class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}
class _WalletState extends State<Wallet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Wallet",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height+30,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.indigoAccent.withOpacity(0.9),Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("Availaible Points:",style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Text("$points",style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                ),
                Divider(height: 2,color: Colors.white,),
                SizedBox(height: 40,),
                Text("Watch Videos And Earn more points:",style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
                ),),
                RaisedButton(onPressed: (){setState(() {
                  points = points + 10;
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (_) => VideoPage(),
                    ),
                  );
                });},child: Text("Click Here to Earn points",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),),color: Colors.black,),
                Divider(height: 3,color: Colors.white,),
                SizedBox(height: 40,),
                Text("Share  And Earn  points:",style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                ),),
                FlatButton(onPressed: (){
setState(() {
  points = points+10;
});
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (_) => sharecreen(),
                    ),
                  );

                },child: Text("Click Here to earn bonus points",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),),color: Colors.black,)
              ],
            ),
          ),
        ],

      ),
    );
  }

}
class sharecreen extends StatefulWidget {
  @override
  _sharecreenState createState() => _sharecreenState();
}

class _sharecreenState extends State<sharecreen> {
  List<Movie> alligators = Movie.getmovies();
TextStyle headstyle = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Share screen",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),

        backgroundColor: Colors.black,
        actions: [
          InkWell(
            onTap: (){
              share1(context);
            },
            child: Center(
              child: Text("share App link",style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.red,
                fontSize: 20
              ),),
            ),
          ),
        ],
      ),
      body: ListView(
          children: alligators
              .map((Movie alligator) => Container(
                child: Card(
            child: Column(
                children: <Widget>[
                  ListTile(hoverColor: Colors.black,
                    title: Text(alligator.title,style:headstyle,),
                    subtitle: Text(alligator.actors,style: headstyle,),
                    trailing: Text(alligator.runtime,style: headstyle,),
                  ),
                  RaisedButton(onPressed: (){
                    share(context, alligator);
                  }, child: Text("click to share Movie Information")),
                ],
            ),
          ),
              )
          )
              .toList()),
    );
  }

  share(BuildContext context, Movie alligator) {
    final RenderBox box = context.findRenderObject();

    Share.share("${alligator.title} - ${alligator.director} - ${alligator.runtime} -${alligator.rated}",
        subject: alligator.director,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
  share1(BuildContext context) {
    final RenderBox box = context.findRenderObject();

    Share.share("https://drive.google.com/file/d/1tazJXm8kcw7lhCX3PUxUScA0ExkjOY4B/view?usp=sharinghttps://drive.google.com/file/d/1tazJXm8kcw7lhCX3PUxUScA0ExkjOY4B/view?usp=sharing",
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
  }