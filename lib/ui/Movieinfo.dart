import 'package:flutter/material.dart';
import 'package:netflix/widgets/gridwidget.dart';
class Movieinfo extends StatelessWidget {
  String title;
List <String> images;
  Movieinfo(this.title,this.images);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (ctx,i) => moviegrid(images[i])
      ),
    );
  }
}
