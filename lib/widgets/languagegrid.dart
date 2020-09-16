import 'package:flutter/material.dart';
import 'package:netflix/ui/languagescreen.dart';
class Languagegrid extends StatelessWidget {
  String title;
  List <String> images;
  Languagegrid(this.title,this.images);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Languagescreen(title,images),
            ),
          );

        },
        child: Container(
color: Colors.black,
          height: 50,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
child: Center(child: Text(title,style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 30
),),),
          )
          ,

        ),
      ),
    );
  }
}
