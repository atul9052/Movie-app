import 'package:flutter/material.dart';
import 'package:netflix/modal/info.dart';
import 'package:netflix/ui/moviescreen.dart';
class Downloaditems extends StatelessWidget {
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

  Downloaditems(this.title, this.year, this.rated, this.released, this.runtime,
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
      child: Card(
        elevation: 60,
        shadowColor: Colors.black87,
        child: ListTile(
          onTap:() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MovieScreen(movie: movelist,),
            ),
          ),
          leading: FittedBox(
              fit: BoxFit.fitHeight,
              child:Image.asset(images)
          ),
          title: Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          subtitle: Text("$runtime"),
          trailing: Text(" $released"),
        ),
      ),
    );
  }
}
