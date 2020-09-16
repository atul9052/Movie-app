import 'package:flutter/material.dart';
import 'package:netflix/modal/categoryinfo.dart';
import 'package:netflix/widgets/gridview.dart';
enum Page{Movies,Tvshows}
class Categoryscreen extends StatefulWidget {
  @override
  _CategoryscreenState createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {


  @override
  Widget build(BuildContext context) {
    final List<Categoryinfo> categorylist = Categoryinfo.getCategoryinfo();
    TextStyle  drawerstyle = TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Movies"),
centerTitle: true,

//        title: Row(
//          children: <Widget>[
//            Expanded(child: FlatButton.icon(onPressed:(){
//              setState(() {
//                _selectedpage=Page.Movies;
//              });
//            }, icon: Icon(Icons.movie,color: _selectedpage==Page.Movies?Colors.red:Colors.white,), label: Text("Movies"))),
//            Expanded(child: FlatButton.icon(onPressed:(){
//              setState(() {
//                _selectedpage=Page.Tvshows;
//              });
//
//
//            }, icon: Icon(Icons.tv,color: _selectedpage==Page.Tvshows?Colors.red:Colors.white,), label: Text("Tv Shows")))
//          ],
//        )
      ),
      body:   ListView.builder(
          scrollDirection: Axis.vertical,
          reverse: false,
          itemCount: categorylist.length,
          itemBuilder: (BuildContext, int index) {
            return ListTile(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (_) => Gridview(categorylist[index].title,categorylist[index].images),
                  ),
                );
              },
              leading: Icon(Icons.movie,color: Colors.black),
              title: Text(categorylist[index].title,style: drawerstyle,),
            );
          }
      ),
    );
  }


}
