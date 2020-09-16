import 'package:flutter/material.dart';
import 'package:netflix/modal/info.dart';
import 'package:netflix/modal/downloadsmodel.dart';
import 'downloadscreen.dart';
import 'package:provider/provider.dart';
class MovieScreen extends StatelessWidget {

  Movie movie;
  MovieScreen({this.movie});
  @override
  Widget build(BuildContext context) {
    final mydownloadlistmovie =Provider.of<Carts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("${movie.title}",style: TextStyle(
          fontSize: 30
        ),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(movie.images,fit: BoxFit.cover,)),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text("Title: ",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Text("${movie.title}",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.75)
              ),),

            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text("Rating: ",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
              ),
              Text("${movie.rated}",style: TextStyle(
                  fontSize: 25,
                  color: Colors.black.withOpacity(0.75)
              ),),

            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text("Director: ",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
              Text("${movie.director}",style: TextStyle(
                  fontSize: 25,
                  color: Colors.black.withOpacity(0.75)
              ),),

            ],
          ),
          Center(
            child: InkWell(
              onTap: (){
                mydownloadlistmovie.additem(movie.title,movie.year,movie.rated,movie.released,movie.runtime,movie.genre,movie.actors,movie.plot,movie.director,movie.images);
                },
              child: Text("DOWNLOAD NOW",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
                backgroundColor:Colors.black
              ),),


            ),
          ),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Downloadscreen(movie:movie),
                  ),
                );

              },
              child: Text("MY DOWNLOAD",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                  backgroundColor:Colors.black
              ),),


            ),
          ),


        ],
      )
    );
  }
}

class CustomShapeclipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height-80);
    var firstendpoint = Offset(size.width*0.5, size.height-20.0);
    var firstcontrolpoint = Offset(size.width*0.25, size.height-37.0);
    path.quadraticBezierTo(firstcontrolpoint.dx, firstcontrolpoint.dy, firstendpoint.dx, firstendpoint.dy);
    var secondcontrolpoint = Offset(size.width*0.75,size.height);
    var seconfendpoint = Offset(size.width, size.height-80 );
    path.quadraticBezierTo(secondcontrolpoint.dx, secondcontrolpoint.dy, seconfendpoint.dx, seconfendpoint.dy);

    path.lineTo(size.width,0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }

}