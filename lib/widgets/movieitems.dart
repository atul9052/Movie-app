import 'package:flutter/material.dart';
import 'package:netflix/modal/info.dart';
import 'package:netflix/ui/moviescreen.dart';
class Cartitems extends StatelessWidget {
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String actors;
  String plot;
  String director;
  String images;

  Cartitems(this.title, this.year, this.rated, this.released, this.runtime,
      this.genre, this.plot, this.actors, this.director, this.images);
  @override
  Widget build(BuildContext context) {
    final movelist = Movie(this.title, this.year, this.rated, this.released, this.runtime,
        this.genre, this.plot, this.actors, this.director, this.images);
    return Dismissible(
      key: ValueKey(genre),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
      ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                color: Colors.orange,
                elevation: 60,

        child: ListTile(
          onTap:() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MovieScreen(movie: movelist,),
              ),
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Container(
              width: 85,
                child:Image.asset(images,fit: BoxFit.fitHeight,)
            ),
          ),
          title: Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.white
          ),),
          subtitle: Text("$runtime",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,color: Colors.white
          ),),
          trailing: Text(" $released"),
        ),
      ),
            ),
    );
  }




}
